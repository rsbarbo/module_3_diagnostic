class SearchController < ApplicationController
  def index
    @stations = Station.new(params)
  end
end
