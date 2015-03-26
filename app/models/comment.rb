class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  field :content

  # validates :content, presence: true

  # default_scope asc(:_id)
end