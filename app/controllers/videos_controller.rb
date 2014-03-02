class VideosController < ApplicationController
  def show
		puts Video.get('/feeds/api/videos', :query => {:q => 'hair'})

		puts Video.get_all.inpsect # will be displayed in your logs (most likely)
		raise Video.get_all.inspect # will raise the response to the view
  end

  def index
  end
end
