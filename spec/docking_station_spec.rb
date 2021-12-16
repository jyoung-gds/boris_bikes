require "docking_station"
describe DockingStation do

  it { should respond_to(:release_bike) }

  it "should release a working bike" do
    subject.dock_bike(Bike.new)
    new_bike = subject.release_bike

    expect(new_bike.working?).to be true
  end

  it { should respond_to(:dock_bike) }

  it "stores a bike in the docking station when the user docks it" do
    subject.dock_bike(Bike.new)

    expect(subject.docked_bikes).to eq bike
  end

  it { should respond_to(:view_bike) }

  it "allows the user to view which bikes are in the dock" do
    subject.dock_bike(Bike.new)

    expect(subject.view_bike).to eq(subject.docked_bikes)
  end

  it "raises an error when trying to release bikes from an empty docking station" do
    expect{subject.release_bike}.to raise_error(RuntimeError, "No bikes available")
  end

  it "raises an error when trying to dock bikes to a full docking station" do
    subject.dock_bike(Bike.new)
    expect{subject.dock_bike(Bike.new)}.to raise_error(RuntimeError, "Docking station is full")
  end

end