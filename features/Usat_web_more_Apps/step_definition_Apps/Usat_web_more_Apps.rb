When(/^click on Apps$/) do
	#require "debug"
  find(".site-nav-more-dropdown-link", :text=>'Apps').click
end

Then(/^click on iphone$/) do
  buttons_container=find(".video-top").all("a")
	buttons_container[0].click
end

Then(/^click  on Usatoday icon of iphone page$/) do
  find(".lockup.product.application").find(".mask").click
end