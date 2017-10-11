# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Listing.create!(title: 'Beautiful flat in Milano Centre', street_address: 'Corso Buenos Aires', city: 'Lombardy', country_code: 'it', bed_count: 2, bedroom_count: 1, bathroom_count: 1, description: 'Tadino flat,is located just in the center of Milan,a few steps from Lima metro station.The flat is an open space with comfortable bed area,table where you can eat and full accessories kitchen where you can prepare your meal.The flat has shower.', night_fee_cents: 7500, cleaning_fee_cents: 1000)

    Listing.create!(title: 'City Penthouse in Central Cape Town', street_address: 'Roeland Street', city: 'Cape Town', country_code: 'sa', bed_count: 2, bedroom_count: 1, bathroom_count: 1, description: 'Modern open plan super spacios penthouses in historic Cape Town . Windows from floor to ceiling to give you the best views of Cape Town and the majestic Table Mountain. The big patio is ideal to sit and watch the sunset and the city lights. Coffee shops, museums, theatre within walking distance. 24 hour security and indoor parking included. Check out our new listing adjacent to this.', night_fee_cents: 20600, cleaning_fee_cents: 1000)

    Listing.create!(title: 'Light & Spacious Garden Flat London', street_address: 'Hazelmere Road', city: 'London', country_code: 'uk', bed_count: 5, bedroom_count: 2, bathroom_count: 2, description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory. Close to Queens park station and all buses. Shops are very nearby as well as nice local restaurants.', night_fee_cents: 24300, cleaning_fee_cents: 1000)

    Listing.create!(title: 'Sunny apartment near metro station.', street_address: 'Hieitzinger Hauptstrasse', city: 'Wien', country_code: 'at', bed_count: 2, bedroom_count: 1, bathroom_count: 1, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.', night_fee_cents: 10700, cleaning_fee_cents: 1000)