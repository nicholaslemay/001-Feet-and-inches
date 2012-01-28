class CarpentersMeasurement
  include CarpentersDictionary

  def self.of number_of_inches
    measurement_in_carpenters_notation = number_of_inches.in_carpenters_notation
    CarpentersMeasurement.new(measurement_in_carpenters_notation).display
  end

  def initialize measurement_in_carpenters_notation
    @measurement = measurement_in_carpenters_notation
  end

  def display
    return the_display_of_feet_and_inches if @measurement.contains_feet? && @measurement.contains_inches?

    return the_display_of_feet_only if @measurement.contains_feet?

    the_display_of_inches_only
  end

  private

  def the_display_of_feet_and_inches
    return "#{the_display_of_feet_only} #{the_display_of_inches_only}"
  end

  def the_display_of_feet_only
    "#{@measurement.number_of_feet} #{conjugate_foot_for(@measurement.number_of_feet)}"
  end

  def the_display_of_inches_only
    return the_display_of_inches_in_fraction if @measurement.contains_fractions_of_an_inch?
    display_the_number_of_whole_inches
  end

  def display_the_number_of_whole_inches
    "#{@measurement.rest_in_inches} #{ conjugate_inches_for(@measurement.rest_in_inches) }"
  end

  def the_display_of_inches_in_fraction
    numerator, denominator = @measurement.inches_in_simplified_fraction
    "#{numerator}/#{denominator} inch"
  end

end