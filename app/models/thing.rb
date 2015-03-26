class Thing
  include Mongoid::Document
  include Mongoid::Timestamps

  # Association
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :deeds

  # Fields
  field :seq, type: Integer
  field :title
  field :subtitle
  field :content

  # Validation
  validates :title, :content, presence: true

  # Callbacks
  before_create :assign_id

protected

  def assign_id
    self.seq = Sequence.generate_id(:thing)
  end
end