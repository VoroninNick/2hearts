class Feedback < ActiveRecord::Base
  attr_accessible :avatar, :customer_name, :descr, :name

  validates :customer_name, presence: true
  validates :descr, presence: true
  validates :name, presence: true

  has_attached_file :avatar, :styles      => { :thumb => '153x153#' },
                             :url         => '/assets/feedback/:id/:style/:basename.:extension',
                             :path        => ':rails_root/public/assets/feedback/:id/:style/:basename.:extension',
                             :default_url => "/images/:style/mising.png"
end
