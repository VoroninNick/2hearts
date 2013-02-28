class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :slug
  belongs_to :category
  has_one :service
end
