class Vehicle < ApplicationRecord

  scope :group_customers_by_nationality, -> {  }

  def self.search(search_text)
    if search_text.blank?
      all
    else
      where('name LIKE ? OR model LIKE ?', "%#{search_text}%", "%#{search_text}%")
    end
  end
end
