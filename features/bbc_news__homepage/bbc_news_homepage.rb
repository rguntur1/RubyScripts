
Then (/^I enter bbc\.com$/) do
   fill_in('gbqfq', :with => "bbcnews.com")
  # find_link('blq-container').visible?
  click_button('gbqfb')
end

Then(/^Ishould be on bbc_homepage\.$/) do
     data_container = find(".srg").all("li")
     puts data_container.count
     str=data_container[1].find(".r").find("a").text
     puts str
     data_container[1].find(".r").find("a").click


	#find(".srg").first('a',  :text => "BBC News - Home").click
  #click_link('a',  :text => "BBC News - Home")
  # first('.item > B').click
  # first("bbcnews").click


end

Then(/^I should navigate to sports page$/) do
 find_link('BBC News').visible?
   data_container = find("#blq-nav-main").all("li")
     puts data_container.count
     str=data_container[1].find("a").text
     data_container[1].find("a").click
     puts str
 
 sleep(10)
end





 # page.has_css?('blq-container')
 # click_link('blq-nav-news')