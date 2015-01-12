Given(/^I am on Usatoday homepage$/) do
  visit('http://www.usatoday.com/')
end

Given(/^hover over MORE$/) do
  find(".site-nav-text-span", :text=>'MORE').hover
end

Then(/^click on Best\-Selling books$/) do
  find(".site-nav-more-dropdown-link", :text=>'Best-Selling Books').click
end

Then(/^select by Author$/) do
	# sleep 5
	# data_container =find(".front-booklist-form-container").all
	require 'debug'
	find(:data-value, 'author')
	expect(data_container).to have_css(".front-booklist-radio-button.ui-radio", :text=>'author')
    # expect(data_container).to have_css(".front-booklist-radio-button.ui-radio", :id=>'bookAuthor')
	# find(".front-booklist-form-container").all
	# page.choose('front-booklist-radio-button ui-radio')



	# find("ui-radio-label", :text=>'by Author')
  # find("option[value='author']").click
  # find("ui-radio-label", :text=>'author').click
  # find("option[value='Business']").click
end

Then(/^search for laura Ingraham$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^check for laura Ingraham in the list$/) do
  pending # express the regexp above with the code you wish you had
end