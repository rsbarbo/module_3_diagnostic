class StationService
  attr_reader :location, :token

  def initialize(params, user_token)
    @location = params[:q]
    @token = user_token[:token]
  end

  def get_all_stations
    parse(connection.get "api/alt-fuel-stations/v1/nearest.json?location=#{location}")
  end

  def connection
    Faraday.new(:url => 'http://developer.nrel.gov//') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params[:api_key] = token
      faraday.params[:fuel_type] = "ELEC,LPG"
      faraday.params[:limit] = "200"
      faraday.params[:radius] = "6"
    end
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
