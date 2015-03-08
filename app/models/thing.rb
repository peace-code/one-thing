class Thing
  include Mongoid::Document

  belongs_to :user

  field :seq, type: Integer
  field :title
  field :subtitle
  field :content

  before_create :assign_id
  
protected

  def assign_id
    self.seq = Sequence.generate_id(:thing)
  end
end