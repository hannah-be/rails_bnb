class Listing < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode
  monetize :night_fee_cents
  monetize :cleaning_fee_cents

  def country
    ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    # [street_address, city, country.name].join(',')
    "#{street_address}, #{city}, #{country.name}"
  end

end
