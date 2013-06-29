class Drink < ActiveRecord::Base
  attr_accessible :name, :video_id

  validates :name, presence: true
  validates :video_id, presence: true
end
