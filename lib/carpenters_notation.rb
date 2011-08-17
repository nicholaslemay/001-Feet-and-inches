class CarpentersNotation

  attr_reader :number_of_feet, :rest_in_inches

  def initialize(number_of_feet, rest_in_inches)
    @number_of_feet = number_of_feet
    @rest_in_inches = rest_in_inches
  end

  def rest_in_thirty_seconds_of_an_inch
    (rest_in_inches * 32).round.to_i
  end

end