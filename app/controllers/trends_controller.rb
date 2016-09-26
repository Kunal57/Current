class TrendsController < ApplicationController
  include ApiHelper

  def index
    # @trends_array = []
    # twitter.trends(id = 23424977, options = {}).each{|trend| @trends_array<<trend.name}

    # bing
    # @images_array = []
    # counter = 1
    #   result = BingSearch.image(@trends_array[0])
    #   puts "____________________________"
    #   puts result[0].to_json

    @trends = Trend.order('created_at DESC').limit(50).reverse
  end

  def show
    @trend = Trend.find(params[:id])
  end

  def api

    @trends_array = []
    twitter.trends(id = 23424977, options = {}).each{|trend| @trends_array<<trend.name}

    bing
    @images_array = []
    counter = 1
    @trends_array.each do |trend|
      puts trend
      result = BingSearch.image(trend).first
        if result == nil
          Trend.create(name: trend, thumbnail: "http://cdn.fansided.com/wp-content/blogs.dir/136/files/2013/05/7003576.jpg", rank: counter)
        else
          Trend.create(name: trend, thumbnail: result.thumbnail.url)
        end
      counter += 1
    end
  end


end
