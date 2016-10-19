class StationService
  attr_reader :location, :token

  def initialize(params, user_token)
    @location = params[:q]
    @token = user_token
  end

  def get_all_stations
  end

  def connection
    Faraday.new(:url => 'http://developer.nrel.gov//api/alt-fuel-stations/v1/nearest.json') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:api_key] = token
    end
  end

  def parse
  end
end

# api_key=EWGaKWN0GootN2zm5w8mhILC4Q0iaAfxqPLgVOeg&location=80203&fuel_type=ELEC,LPG&limit=200&radius=6
