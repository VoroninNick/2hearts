class Asset < ActiveRecord::Base
  attr_accessible :assetable_id, :assetable_type, :attachment

  belongs_to :assetable, :polymorphic => true

  attr_accessor :delete_attachment
  before_validation { self.attachment.clear if self.delete_attachment == '1' }

  # Paperclip image attachments
  has_attached_file :attachment, :styles => { :thumb => '150x150>' },
                    :url    => '/assets/attachment/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/attachment/:id/:style/:basename.:extension'

  # Validate banner presence
  validates_attachment_presence :attachment
  validates_attachment_size :attachment, :less_than => 2.megabytes
  validates_attachment_content_type :attachment, :content_type => %w{'image/jpeg' 'image/png'}
end
