class Station
  def initialize(params)
    @service ||= Service.new(params)
  end

  def find_all_stations
    @service.get_all_stations
  end
end
