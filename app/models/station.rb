class Station
  attr_reader :service

  def initialize(params)
    @service ||= StationService.new(params, token: ENV['user_token'])
  end

  def find_all_stations
    service.get_all_stations
  end

  def fuel_stations_names
    find_all_stations[:fuel_stations].map do |stations|
      binding.pry
      stations
    end
  end

end
