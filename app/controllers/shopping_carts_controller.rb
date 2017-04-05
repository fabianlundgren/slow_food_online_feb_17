class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def complete
    @cart.update(paid: 'true')
    session.delete(:cart_id)
  end

  def create
    
  end

  def show

  end

  private

  def get_shopping_cart
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
