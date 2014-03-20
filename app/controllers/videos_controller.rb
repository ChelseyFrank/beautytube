class VideosController < ApplicationController
  def show
    @query = params[:query]
    @randnumber = rand(0...20)
    @results = Video.get('/feeds/api/videos', :query => {:q => @query, :alt => 'json', :max_results => 50})
    @first_url = @results["feed"]["entry"][@randnumber]["id"]["$t"]
    @video_title = @results["feed"]["entry"][@randnumber]["title"]["$t"]
    @video_description = @results["feed"]["entry"][@randnumber]["content"]


    @id = @first_url.split("videos/")[1]
    @url = "https://www.youtube.com/embed/" + @id
  end

  def index
    @braid = "how to hair braids"
    @color = "hair coloring styles"
    @eye = "eye makeup tutorial"
    @lip = "lip makeup techniques"
    @nail = "nail painting tricks"
  end
end
