class CommentsController < ApplicationController
  
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: "comment created" }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to @commentable }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @commentable = @comment.commentable
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @commentable, notice: "comment deleted" }
      format.json { head :no_content }
    end
  end

private

  def comment_params 
    params.require(:comment).permit(:content)
  end

  def find_commentable
    params.each do |k, v|
      if k =~ /(.+)_id$/
        return $1.classify.constantize.find v
      end
    end
  end
end