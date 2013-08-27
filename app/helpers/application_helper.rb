module ApplicationHelper

	# Setup title
	# Variable: page_title
	# Usage: use as yield content in <title></title>
	def title(page_title)
    if page_title.present?
      content_for(:title) { page_title } # Render yield
    else
      page_title = ""
      content_for(:title) { page_title } # Render yield
    end
  end

  # Get current url path
  def current_url
    request.env['REQUEST_URI']
  end
  
  def find_text(id)
    @find_text = TextEditor.find(id)
  end
  
  def main_video
    @main_video ||= HomeVideo.find(5)
  end
  
  def home_video
    @home_video ||= HomeVideo.first(4)
  end

end
