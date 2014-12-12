
# When(/^I visit the Dominos home page$/) do
#   visit('https://order.dominos.com/')
#   sleep 10
# end

Then(/^I click the "(.*?)" tab$/) do |arg|
	puts "*******************"+arg
  find(".qa-Cl_order").click
end

Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_css(".Locations")
  expect(page).to have_css(".Carryout")
end


