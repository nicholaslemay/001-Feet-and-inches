require "spec_helper"

describe "Inches" do

  it "should be converted to the carpenters notation with the right number of feet" do

    0.inches.in_carpenters_notation.number_of_feet.should == 0
    12.inches.in_carpenters_notation.number_of_feet.should == 1
    24.inches.in_carpenters_notation.number_of_feet.should == 2

  end

  it "should convert the notation with the right number of inches" do
    0.inches.in_carpenters_notation.rest_in_inches.should == 0
    5.inches.in_carpenters_notation.rest_in_inches.should == 5
  end

  it "should be converted to the carpenters notation with the right number of inches for an uneven number of feet" do

    18.inches.in_carpenters_notation.number_of_feet.should == 1
    18.inches.in_carpenters_notation.rest_in_inches.should == 6

  end

end