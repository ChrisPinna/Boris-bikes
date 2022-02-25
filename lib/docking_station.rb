 require_relative 'bike'

class DockingStation
  def initialize(capacity = 20)
    @DEFAULT_CAPACITY = capacity
    @rack = []
  end

  attr_reader :rack
  attr_reader :DEFAULT_CAPACITY

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