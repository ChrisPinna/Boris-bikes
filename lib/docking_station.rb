 require_relative 'bike'

class DockingStation
  def initialize
    @rack = []
  end

  attr_reader :rack

  def release_bike
    raise 'No bikes available' if @rack.empty?
    return Bike.new
  end

  def dock(bike)
    @rack << bike
  end
end