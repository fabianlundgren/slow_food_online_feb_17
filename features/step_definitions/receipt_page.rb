Then(/^my order should be marked as true$/) do
 expect(ShoppingCart.first.paid).to eq true
end

Given(/^there is a shopping cart saved in a cookie$/) do
  cart = ShoppingCart.last
  cart_id = cart.id
  case Capybara.current_session.driver
  when Capybara::Poltergeist::Driver
    page.driver.set_cookie('cart_id', cart_id)
  when Capybara::RackTest::Driver
    headers = {}
    Rack::Utils.set_cookie_header!(headers, 'cart_id', cart_id)
    cookie_string = headers['Set-Cookie']
    Capybara.current_session.driver.browser.set_cookie(cookie_string)
  else
    raise "no cookie-setter implemented for driver #{Capybara.current_session.driver.class.name}"
  end
end
