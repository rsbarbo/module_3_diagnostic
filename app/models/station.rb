class Station
  def initialize(params)
    @service ||= StationService.new(params, token: ENV['user_token'])
  end

  def find_all_stations
    @service.get_all_stations
  end
end
