class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :sub_categories
  has_one :service
end
