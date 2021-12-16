require "docking_station"
describe DockingStation do

  it { should respond_to(:release_bike) }

  it "should release a working bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.working?).to be true
  end

  it { should respond_to(:dock_bike) }

  it "docks a bike in the docking station" do
    station = DockingStation.new
    bike = station.release_bike

    station.dock_bike(bike)

    expect(station.docked_bikes).to eq bike
  end

  it { should respond_to(:view_bike) }

  it "shows which bikes are in the dock" do
    station = DockingStation.new
    station.dock_bike(Bike.new)

    expect(station.view_bike).to eq(station.docked_bikes)
  end

end 

