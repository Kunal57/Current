class TwitterController < ApplicationController
  include ApiHelper

  def index
    @trends_array = []
    twitter.trends(id = 23424977, options = {}).each{|trend| @trends_array<<trend.name}
    puts @trends_array

		bing
    @images_array = []
    @trends_array.each do |trend|
    	puts trend
    	result = BingSearch.image(trend).first
    	if result != nil
				@images_array<<result.thumbnail.url
			end
    end
    @images_array
  end

  def show
    @trends_array
  end

end
