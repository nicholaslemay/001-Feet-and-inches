require "spec_helper"

describe "Carpenter's notation" do

  it "should not contain feet when there are none" do
    carpenters_notation_of_0_inch = 0.inches.in_carpenters_notation
    carpenters_notation_of_0_inch.contains_feet?.should == false
  end

  it "should contain feet when there is at least one" do
    carpenters_notation_of_1_foot = 12.inches.in_carpenters_notation
    carpenters_notation_of_1_foot.contains_feet?.should == true
  end

  it "should not contain inches when there are none" do
    carpenters_notation_of_0_inch = 0.inches.in_carpenters_notation
    carpenters_notation_of_0_inch.contains_inches?.should == false
  end

  it "should contain inches when there is at least one" do
    carpenters_notation_of_1_inch = 1.inches.in_carpenters_notation
    carpenters_notation_of_1_inch.contains_inches?.should == true
  end

  it "should simplify the rest in inches properly" do
    one_feet_and_9_32 = 12.2785
    nominator, denominator = one_feet_and_9_32.inches.in_carpenters_notation.inches_in_simplified_fraction
    nominator.should   == 9
    denominator.should == 32

    one_feet_and_11_16th = 12.6895
    nominator, denominator = one_feet_and_11_16th.inches.in_carpenters_notation.inches_in_simplified_fraction
    nominator.should   == 11
    denominator.should == 16

  end




end