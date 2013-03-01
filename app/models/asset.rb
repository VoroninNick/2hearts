class Asset < ActiveRecord::Base
  attr_accessible :assetable_id, :assetable_type, :attachment

  belongs_to :assetable, :polymorphic => true

  attr_accessor :delete_attachment
  before_validation { self.attachment.clear if self.delete_attachment == '1' }

  # Paperclip image attachments
  has_attached_file :attachment, :processors => [:watermark], :styles => { :thumb => '150x150>', :main => { :geometry => "1440x900#", :watermark_path => ":rails_root/public/images/watermark.png", :position => "SouthEast" }, :medium => { :geometry => "800x600#", :watermark_path => ":rails_root/public/images/watermark.png", :position => "SouthEast" } },
                    :url    => '/assets/attachment/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/attachment/:id/:style/:basename.:extension'
end
