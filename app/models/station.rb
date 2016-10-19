class Station
  def initialize(params)
    @service ||= Service.new(params)
  end
end
