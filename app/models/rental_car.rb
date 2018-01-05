class RentalCar < ApplicationRecord
  self.table_name = "rental_cars"
  has_many :renting

	def combined_value
		"#{self.brand} | #{self.model} | #{self.additional_information}"
  end

  def combined_model
    "#{self.brand} | #{self.model}"
  end
end
