When(/^I click the "([^"]*)" stripe button$/) do |arg|
  find('.stripe-button-el').trigger('click')
end

And(/^I fill in my card details on the stripe form$/) do
    sleep(2)
    stripe_iframe = all('iframe[name=stripe_checkout_app]').last
    Capybara.within_frame stripe_iframe do
      fill_in 'Email', with: 'random@morerandom.com'
      fill_in 'Card number', with: '4242 4242 4242 4242'
      fill_in 'CVC', with: '123'
      fill_in 'cc-exp', with: '12/2021'
    end
end

When(/^I submit the stripe form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
