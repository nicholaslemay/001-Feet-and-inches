require "spec_helper"

describe CarpentersMeasurement do

  it "should convert 1 to 1 inch" do
    CarpentersMeasurement.of(1.inch).should == "1 inch"
  end

  it "should pluralize a converted number of inches" do
    [0,2,8].each do |n|
      CarpentersMeasurement.of(n.inches).should == "#{n} inches"
    end
  end

  it "should rise an exception on negative parameter" do
    lambda{CarpentersMeasurement.of(-1.inch)}.should raise_error InvalidLengthError
  end

  it "should return 1 foot for 12 inches" do
    CarpentersMeasurement.of(12.inches).should == "1 foot"
  end

  it "should pluralize multiple feet" do
    CarpentersMeasurement.of(24.inches).should == "2 feet"
  end
end