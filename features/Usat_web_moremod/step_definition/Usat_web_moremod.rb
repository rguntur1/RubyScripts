Given(/^Iam on Usatoday homepage$/) do
  visit('http://www.usatoday.com/')
end

When(/^I hover over more$/) do
  find(".site-nav-text-span", :text=>'MORE').hover
end

 Then(/^click on usanow$/) do
 find(".site-nav-more-dropdown-link", :text=>'USA NOW').click
# # require "debug"
 end

When(/^I click on Photogalleries$/) do
  link=find(".media-view-filter-photos-btn")
    expectedpath = link["hfref"]
   print "*********************************"
   print expectedpath
   link.click
end


Then(/^page should show the message "Oops, looks like there's no content in this category$/) do
  expect(page).to have_css(".media-content-empty") 
end