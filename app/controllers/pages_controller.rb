class PagesController < ApplicationController
  layout false

  def landing
    # @latest_restaurants = Restaurant.order(created_at: :desc).limit(5)
    @latest_restaurants = Restaurant.all
  end
end
