 require_relative 'bike'

class DockingStation
  def initialize
    @rack = []
  end

  attr_reader :rack

  def release_bike
    raise 'No bikes available' if @rack.empty?
    return @rack.pop
  end

  def dock(bike)
    raise 'No spaces to dock a bike' if @rack.count >= 20
    @rack << bike
  end
end