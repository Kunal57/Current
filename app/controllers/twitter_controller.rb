class TwitterController < ApplicationController
  include TwitterHelper

  def index
    @trends_array = []
    twitter.trends(id = 23424977, options = {}).each{|trend| @trends_array<<trend.name}
    puts @trends_array

		BingSearch.account_key = '0WB5cSxqxRgAtwqLRqo1egZ6BubXFirjmJOMcIUSfdY'
    @images_array = []
    @trends_array.each do |trend|
    	puts trend
    	result = BingSearch.image(trend)
    	if result[0] != nil
				@images_array<<result[0].thumbnail.url
			end
    end
    @images_array
  end

  def show
    @trends_array
  end

end
