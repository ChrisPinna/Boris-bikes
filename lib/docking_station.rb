 require_relative 'bike'

class DockingStation
  def initialize
    @rack = []
  end

  attr_reader :rack

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @rack << bike
  end
end