class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def complete
    @cart.update(paid: 'true')
    session.delete(:cart_id)
    render :complete
  end

  def create
    charge = perform_transaction(params, @cart)
    if charge.class == Stripe::Charge
      redirect_to complete_path, notice: 'that went well'
    else
      flash[:notice] = 'That didn\'t work out'
      redirect_to cart_path(@cart)
    end

  end

  def show
  end

  private

  def get_shopping_cart
    @cart = ShoppingCart.find(session[:cart_id])
  end

  def perform_transaction(params, cart)
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: (cart.total * 100).to_i,
      description: 'Slow Food order',
      currency: 'sek'
    )

    return charge
  end
end
