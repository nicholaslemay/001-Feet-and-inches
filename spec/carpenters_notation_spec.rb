require "spec_helper"

describe CarpentersMeasurement do

  it "should calculate its rest in thirtyseconds of an inch" do
    one_foot_nine_thirty_twos = CarpentersNotation.new(1, 0.2785)

    one_foot_nine_thirty_twos.number_of_feet.should == 1
    one_foot_nine_thirty_twos.rest_in_inches.should == 0.2785
    one_foot_nine_thirty_twos.rest_in_thirty_seconds_of_an_inch.should == 9

  end


end