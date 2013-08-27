class HomeVideo < ActiveRecord::Base
  attr_accessible :descr, :name, :video_id, :vimeo, :youtube
  validates :name, presence: true
  validates :video_id, presence: true
end
