When(/^I visit the Dominos home page$/) do
  visit('https://order.dominos.com/')
  # sleep 10
end

Then(/^I should see the Dominos home page$/) do
	expect(page).to have_css("#homeWrapper")
  # page.should have_content('master-mixnmatchCTA heroCTA')
end





























