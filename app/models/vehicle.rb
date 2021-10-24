class Vehicle < ApplicationRecord

  scope :group_customers_by_nationality, -> { group(:nationality).count(:name) }
  scope :average_odometer_by_nationality, -> { group(:nationality).average(:odometer_reading) }

  def self.search(search_text)
    if search_text.blank?
      all
    else
      where('name LIKE ? OR model LIKE ?', "%#{search_text}%", "%#{search_text}%")
    end
  end
end
