class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
