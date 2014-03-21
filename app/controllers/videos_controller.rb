class VideosController < ApplicationController
  def show
    @query = params[:query]
    @randnumber = rand(0...10)
    @page = rand(0...100)
    @results = Video.get('/feeds/api/videos?&max-results=10&start-index='+ "#{@page}", :query => {:q => @query, :alt => 'json'})
    @first_url = @results["feed"]["entry"][@randnumber]["id"]["$t"]
    @video_title = @results["feed"]["entry"][@randnumber]["title"]["$t"]
    # @first_url_long = @results["feed"]["link"][3]["href"]
    # @second_url_long = @results["feed"]["link"][4]["href"]

    @id = @first_url.split("videos/")[1]
    @url = "https://www.youtube.com/embed/" + @id
  end

  def index
    @braid = "how to hair braids"
    @color = "hair coloring styles"
    @eye = "eye makeup tutorial"
    @lip = "lip%20makeup%7Clipstick%20tutorial"
    @nail = "nail painting tricks"
  end
end
