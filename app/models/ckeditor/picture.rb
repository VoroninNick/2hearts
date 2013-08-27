class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data, :processors => [:watermark],
                    :url  => "/ckeditor_assets/pictures/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension",

                    :styles => { :content => { :geometry => "800>", :watermark_path => "#{Rails.root}/public/images/logo.png" },
                                :thumb	 => { :thumb => "118x100#", :watermark_path => "#{Rails.root}/public/images/logo.png" },
                    }

  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_presence :data

  def url_content
    url(:content)
  end
end
