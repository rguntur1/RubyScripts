When(/^Filter "(.*?)" from Media Type Overlay$/) do |filter_type|
   find(".media-filter-link").click
  find(".media-select-option", :text=>filter_type).click
  find(".overlay-close-btn").click
end

Then(/^I should see "(.*?)" heading$/) do |headine_title|
  if headine_title=="All"

     expect(page).to have_css(".section-heading", :text=>"Videos & Photos".upcase)

  else
    expect(page).to have_css(".section-heading", :text==headine_title.upcase)

  end

end



Then(/^I should see only "(.*?)" on the page$/) do |filter_type|

if filter_type=="All"
  page.should have_css(".media-gallery-icon")
  page.should have_css(".media-play-icon")

  elsif filter_type=="Videos"

  

   page.should have_css(".media-play-icon")
   page.should_not have_css(".media-gallery-icon")

    elsif  filter_type=="Photos"
    page.should have_css(".media-gallery-icon")
     page.should_not have_css(".media-play-icon")

end 
 
end