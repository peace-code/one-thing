class Deed
  include Mongoid::Document
  include Mongoid::Timestamps

  # relations
  belongs_to :user
  belongs_to :thing
end