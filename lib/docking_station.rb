class DockingStation

  attr_reader :docked_bikes

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @docked_bikes = bike
  end

  def view_bike
    puts "The following bikes are available: #{@docked_bikes}"
    return @docked_bikes
  end

end