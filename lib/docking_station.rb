class DockingStation

  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end 

  def release_bike
    fail "No bikes available" if @docked_bikes.empty?
    Bike.new
  end

  def dock(bike)
    fail "Docking station is full" unless @docked_bikes.length < 20
    @docked_bikes << bike
  end

  def view_bike
    puts "The following bikes are available: #{@docked_bikes}"
    return @docked_bikes
  end

end