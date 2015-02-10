 When(/^Go directly to "(.*?)" front$/) do |url_link|
  visit base_url(url_link)
end


Then(/^I should see "(.*?)" front$/) do |front_header_class|
expect(page).to have_css(".header-logo.header-#{front_header_class}") 
 end