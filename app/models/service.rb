class Service < ActiveRecord::Base
  attr_accessible :avatar, :description, :name, :assets_attributes, :sub_category_id, :category_id, :delete_avatar

  validates :name, presence: true
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug_for_services

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  # Validate name presence and minimum lenght 2 chars
  validates :name, :presence        => true, :length => { :minimum => 2 }
  validates :description, :presence => true, :length => { :minimum => 2 }

  # Paperclip image attachments
  has_attached_file :avatar, :styles => { :thumb => '150x150>', :main => '460x360#' },
                    :url    => '/assets/service/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/service/:id/:style/:basename.:extension'

  has_many :assets, :as => :assetable, :dependent => :destroy
  accepts_nested_attributes_for :assets

  belongs_to :category
  belongs_to :sub_category

  def to_param
    slug
  end

  def generate_slug_for_services
    self.slug ||= name.parameterize
  end
end
