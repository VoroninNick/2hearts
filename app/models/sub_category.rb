class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :slug

  validates :name, presence: true
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug_for_sub

  belongs_to :category
  has_one :service

  def to_param
    slug
  end

  def generate_slug_for_sub
    self.slug ||= name.parameterize
  end
end
