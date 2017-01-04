module RestaurantsHelper
  def price_as_dollar_signs(price)
    if price.nil? || price <= 0
      "NA"
    else
      # if price > 5
      #  price = 5
      # end
      "$" * [price, 5].min
    end
  end
end
