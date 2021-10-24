class Vehicle < ApplicationRecord
  def self.search(search_text)
    if search_text.blank?
      all
    else
      where('name LIKE ? OR model LIKE ?', "%#{search_text}%", "%#{search_text}%")
    end
  end
end
