require "docking_station"
describe DockingStation do

  it { should respond_to(:release_bike) }

  it "should release a working bike" do
    subject.dock(Bike.new)

    expect(subject.release_bike.working?).to be true
  end

  it { should respond_to(:dock) }

  it "stores a bike in the docking station when the user docks it" do
    subject.dock(Bike.new)

    expect(subject.docked_bikes).to_not be_empty
  end

  it { should respond_to(:view_bike) }

  it "allows the user to view which bikes are in the dock" do
    subject.dock(Bike.new)

    expect(subject.view_bike).to eq(subject.docked_bikes)
  end

  it "raises an error when trying to release bikes from an empty docking station" do
    expect{subject.release_bike}.to raise_error(RuntimeError, "No bikes available")
  end

  it "raises an error when trying to dock bikes to a full docking station" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect{subject.dock(Bike.new)}.to raise_error(RuntimeError, "Docking station is full")
  end

  it "can store up to 20 bikes" do
    expect{DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}}.to_not raise_error()
    expect(subject.docked_bikes.length).to eq DockingStation::DEFAULT_CAPACITY
  end

end