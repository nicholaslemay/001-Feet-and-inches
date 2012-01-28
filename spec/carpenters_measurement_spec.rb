require "spec_helper"

describe CarpentersMeasurement do

  it "should raise an exception on negative number of inches" do
    lambda{CarpentersMeasurement.of(-1.inch)}.should raise_error InvalidLengthError
  end

  it "should convert 1 inch to 1 inch" do
    CarpentersMeasurement.of(1.inch).should == "1 inch"
  end

  it "should pluralize a converted number of inches" do
    [0,2,8].each do |n|
      CarpentersMeasurement.of(n.inches).should == "#{n} inches"
    end
  end

  it "should display 1 for for 12 inches" do
    CarpentersMeasurement.of(12.inches).should == "1 foot"
  end

  it "should pluralize the display of multiple feet" do
    CarpentersMeasurement.of(24.inches).should == "2 feet"
  end

  it "should display an uneven number of feet" do
    CarpentersMeasurement.of(26.inches).should == "2 feet 2 inches"
  end

  it "should display the number of thirty seconds of an inch when appropriate" do
    CarpentersMeasurement.of(12.2785.inches).should == "1 foot 9/32 inch"
  end

  it "should simplify the number of thirty seconds of an inch when appropriate" do
    CarpentersMeasurement.of(12.6895.inches).should == "1 foot 11/16 inch"
  end

end