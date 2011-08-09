class CarpentersMeasurement

  def self.of number_of_inches
    display_the number_of_inches.in_carpenters_notation
  end

  private

  def self.display_the(carpenters_measurement)
    display = display_number_of_feet_of(carpenters_measurement)
    display +=  display_number_of_inches_of(carpenters_measurement)
    display
  end

  def self.display_number_of_feet_of(carpenters_measurement)
    display_of__the_number_of_feet = ""
    if carpenters_measurement.number_of_feet > 0
      display_of__the_number_of_feet = "#{carpenters_measurement.number_of_feet} #{carpenters_measurement.number_of_feet == 1 ? 'foot' : 'feet'}"
    end
    display_of__the_number_of_feet
  end

  def self.display_number_of_inches_of(carpenters_measurement)
    display_of_the_number_of_inches = ""
    if carpenters_measurement.rest_in_inches > 0 || carpenters_measurement.number_of_feet == 0
      display_of_the_number_of_inches += " " if carpenters_measurement.number_of_feet != 0
      display_of_the_number_of_inches += "#{carpenters_measurement.rest_in_inches} #{carpenters_measurement.rest_in_inches == 1 ? 'inch' : 'inches'}"
    end
    display_of_the_number_of_inches
  end

end