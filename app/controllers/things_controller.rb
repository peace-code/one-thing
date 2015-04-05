class ThingsController < ApplicationController
  before_action :find_thing, only: [:show, :edit, :update, :destory, :new_deed]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @things = Thing.all
  end

  def show
    @thing = Thing.find(params[:id])
    @thing.comments.build
  end

  def seq
    @thing = Thing.where(seq: params[:seq]).first
  end

  def new
    @thing = current_user.things.build()
  end

  def create
    puts "create #{user_signed_in?}, #{current_user.things.empty?}"
    unless user_signed_in? || current_user.things.empty?
      redirect_to things_url
      return nil
    end

    puts "build"
    @thing = current_user.things.build(thing_params)
    if @thing.save
      redirect_to @thing, notice: "create ok"
    else
      render 'new'
    end
  end

  def edit
    redirect_to @thing, notice: "you don't have permission yet." unless @thing.user == current_user
  end

  def update
    # @thing = current_user.things.find(thing_params)
    if @thing.update_attributes(thing_params)
      redirect_to @thing, notice: 'update ok'
    else
      render 'edit'
    end
  end

  def destory
  end

  def new_deed
    @thing.deeds.create(user: current_user)
    redirect_to @thing, notice: 'create deed'
  end

private

  def thing_params
    params.require(:thing).permit(:seq, :title, :subtitle, :content)
  end

  def find_thing
    @thing = Thing.find(params[:id])
  end
end
