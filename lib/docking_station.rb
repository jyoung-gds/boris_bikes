class DockingStation

  attr_reader :docked_bikes
  def release_bike
    fail "No bikes available" unless @docked_bikes
    Bike.new
  end

  def dock_bike(bike)
    fail "Docking station is full" unless @docked_bikes == nil
    @docked_bikes = bike
  end

  def view_bike
    puts "The following bikes are available: #{@docked_bikes}"
    return @docked_bikes
  end

end