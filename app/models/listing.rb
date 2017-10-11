class Listing < ApplicationRecord
  validates :title, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :country_code, presence: true
  validates :country, presence: {
    message: -> (listing, data) { "No country for code: #{listing.country_code}" }
  }

  validates :bed_count, numericality: { greater_than: 0 }
  validates :bedroom_count, numericality: { greater_than: 0 }
  validates :bathroom_count, numericality: { greater_than: 0 }

  geocoded_by :full_address
  after_validation :geocode
  monetize :night_fee_cents
  monetize :cleaning_fee_cents

  def country
    ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    # [street_address, city, country.name].join(',')
    return nil if country.nil?
    "#{street_address}, #{city}, #{country.name}"
  end

end
