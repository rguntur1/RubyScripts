 Given(/^I am on Usatoday homepage$/) do
    visit('http://www.usatoday.com/')
 end

When(/^hover over MORE$/) do
   find(".site-nav-text-span", :text=>'MORE').hover
 end