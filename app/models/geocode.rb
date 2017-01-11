class Geocode
  def initialize(restaurant)
    @restaurant = restaurant
  end

  def lookup
    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json", { query: { address: @restaurant.address } })
    location = response["results"].map { |result| result["geometry"] }.map { |geometry| geometry["location"] }.first
    if location
      @restaurant.lat = location["lat"]
      @restaurant.lng = location["lng"]
      @restaurant.save
    end
  end
end
