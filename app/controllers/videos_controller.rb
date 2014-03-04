class VideosController < ApplicationController
  def show
    @query = params[:query]
    @results = Video.get('/feeds/api/videos', :query => {:q => @query, :alt => 'json'})
    @first_url = @results["feed"]["entry"][0]["id"]["$t"]
    # @first_url = @results["feed"]["entry"][0]["media$group"]["media$player"][0]["url"]

    @id = @first_url.split("videos/")[1]
  #   @url = "https://www.youtube.com/v/VzEHmcABGUU?version=3&f=videos&app=youtube_gdata"
  end

  def index
    @braid = "how to hair braids"
    @color = "hair coloring styles"
    @eye = "eye makeup tutorials"
    @lip = "lip makeup techniques"
  end
end
