class DockingStation

  attr_reader :docked_bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @docked_bikes = []
  end 

  def release_bike
    fail "No bikes available" if empty?
    @docked_bikes.pop
  end

  def dock(bike)
    fail "Docking station is full" if full?
    @docked_bikes << bike
  end

  def view_bike
    puts "The following bikes are available: #{@docked_bikes}"
    return @docked_bikes
  end

  private

  def full?
    return true if @docked_bikes.length >= DEFAULT_CAPACITY
    return false if @docked_bikes.length < DEFAULT_CAPACITY
  end

  def empty?
    return true if @docked_bikes.length == 0
    return false if @docked_bikes.length > 0
  end

end