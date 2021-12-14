require "bike"
describe Bike do
  it {should respond_to(:working?)}
  it "should be working" do
    expect(subject.working?).to eq true
  end
end 