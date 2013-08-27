class PageController < ApplicationController
  def index
    @feedback ||= Feedback.last(4)
  end

  def about
  	@members ||= Team.all
  end

  def contact
  end
end
