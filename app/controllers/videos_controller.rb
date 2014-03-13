class VideosController < ApplicationController
  def show
    @query = params[:query]
    @results = Video.get('/feeds/api/videos', :query => {:q => @query, :alt => 'json'})
    @first_url = @results["feed"]["entry"][0]["id"]["$t"]
    @video_title = @results["feed"]["entry"][0]["title"]["$t"]
    @video_description = @results["feed"]["entry"][0]["content"]

    @id = @first_url.split("videos/")[1]
    @url = "https://www.youtube.com/embed/" + @id
  end

  def index
    @braid = "how to hair braids"
    @color = "hair coloring styles"
    @eye = "eye makeup tutorials"
    @lip = "lip makeup techniques"
    @nail = "nail painting tricks"
  end
end
