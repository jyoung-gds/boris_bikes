require "docking_station"
describe DockingStation do
   
  it { should respond_to(:release_bike) }

  it "should release a working bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.working?).to be true
  end
end 


