class VideosController < ApplicationController
  def show
    @query = params[:query]
    @results = Video.get('/feeds/api/videos', :query => {:q => @query})
  end

  def index
    @braid = "how to hair braids"
    @color = "hair coloring styles"
    @eye = "eye makeup tutorials"
    @lip = "lip makeup techniques"
  end
end
