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
















# When(/^Filter "(.*?)" from Media Type Overlay$/) do |arg1|
#  visit('http://mhigh.usatoday.com/')
#     main_menu=find(".menu-toggle-btn.main-nav-btn")
#      @href = main_menu["href"]
#     visit @href
#      # require 'debug'
#  @front_medialink=find(".nav-item-link", :text => "VIDEOS & PHOTOS") 
# 	@front_href=@front_medialink["href"]
# 	puts @front_href
# 	visit @front_href
# end

#  Then(/^I should see "(.*?)" heading$/) do |arg1|
#    expect(page).to have_css(".media-header")
# end

#  Then(/^I should see only "(.*?)" on the page$/) do |arg1|
#    # require 'debug'
#  	find(".media-filter-link").click
    
#  	find(".search-history-media-by-type").find(".media-select-option", :text=> 'Videos').click
#     find(".overlay-close-btn.top.close-media-filter").click
 
# end

# Then(/^I should see only videos on the page$/) do
#   expect(page).to have_css(".media-play-icon.media-icon")
#   expect(page).to have_css(".media-gallery-icon.media-icon")
# end