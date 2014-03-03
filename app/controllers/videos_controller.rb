class VideosController < ApplicationController
  def show
		@query = params[:query]
		@results = Video.get('/feeds/api/videos', :query => {:q => @query})
  end

  def index
  end
end
