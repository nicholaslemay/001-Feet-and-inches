require "spec_helper"

shared_examples_for 'CarpentersDictionary' do

  describe "Translating foot" do
    it "shoot be feet when there are 0" do
      @dictionary_user.conjugate_foot_for(0).should == "feet"
    end

    it "shoot be foot when there are 1" do
      @dictionary_user.conjugate_foot_for(1).should == "foot"
    end

    it "should be feet when there are many" do
      [3,4,5].each do |many_feet|
        @dictionary_user.conjugate_foot_for(many_feet).should == "feet"
      end
    end
  end

  describe "Translating inches" do
    it "shoot be inches when there are 0" do
      @dictionary_user.conjugate_inches_for(0).should == "inches"
    end

    it "shoot be inch when there are 1" do
      @dictionary_user.conjugate_inches_for(1).should == "inch"
    end

    it "should be inches when there are many" do
      [3,4,5].each do |many_inches|
        @dictionary_user.conjugate_inches_for(many_inches).should == "inches"
      end
    end
  end
end

describe CarpentersMeasurement do
  before(:each)do
    @dictionary_user = CarpentersMeasurement.new(nil)
  end
  it_behaves_like 'CarpentersDictionary'
end