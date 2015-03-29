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

  # scopes
  default_scope -> { desc(:created_at) }

  # Callbacks
  before_create :assign_id

  def featured_image
    /img src=\"(?<url>.*?)\"/.match(content) { |x| x['url'] }
  end

protected

  def assign_id
    self.seq = Sequence.generate_id(:thing)
  end
end