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
    raise 'No spaces to dock a bike' if @rack.count >= 1
    @rack << bike
  end
end