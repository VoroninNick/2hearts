class Category < ActiveRecord::Base
  attr_accessible :description, :name, :sub_category_ids, :slug

  validates :name, presence: true
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug_for_cat

  has_many :sub_categories
  has_one :service

  def to_param
    slug
  end

  def generate_slug_for_cat
    self.slug ||= name.parameterize
  end
end
