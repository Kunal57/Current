class TwitterController < ApplicationController
  include TwitterHelper

  def index
    @trends_array = []
    twitter.trends(id = 23424977, options = {}).each{|trend| @trends_array<<trend.name}
    @trends_array
  end

  def show
    @trends_array
  end


end