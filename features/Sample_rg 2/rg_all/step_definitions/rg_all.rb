
 Then(/^I should see both videos and photos on the page$/) do
  page.should have_css(".media-play-icon")
  page.should have_css(".media-gallery-icon")
end