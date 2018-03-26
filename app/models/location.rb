class Location < ApplicationRecord

  validates :address, presence: true
  validates :city, presence: true

  geocoded_by :my_location
  after_validation :geocode

  def my_location
    return "#{address}, #{city}, GA"
  end

end
