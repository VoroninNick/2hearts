class TextEditor < ActiveRecord::Base
  attr_accessible :descr, :name
  validates :name, presence: true
end
