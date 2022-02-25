 require_relative 'bike'

class DockingStation
  def initialize
    @DEFAULT_CAPACITY = 20
    @rack = []
  end

  attr_reader :rack

  def release_bike
    raise 'No bikes available' if empty?
    return @rack.pop
  end

  def dock(bike)
    raise 'No spaces to dock a bike' if full?
    @rack << bike
  end

  private 

  def full? 
    @rack.count >= @DEFAULT_CAPACITY
  end

  def empty?
    @rack.empty?
  end

end