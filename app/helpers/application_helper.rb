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



end
