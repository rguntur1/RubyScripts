# Given(/^I am on Usatoday homepage$/) do
#   visit('http://www.usatoday.com/')
# end

# Given(/^hover over MORE$/) do
#   find(".site-nav-text-span", :text=>'MORE').hover
# end

Then(/^click on Best\-Selling books$/) do
  find(".site-nav-more-dropdown-link", :text=>'Best-Selling Books').click
end

Then(/^select by Author$/) do
	# sleep 5
	# data_container =find(".front-booklist-form-container").all
	# require 'debug'
	find(:css, "[data-value='author']")

end

Then(/^search for laura Ingraham$/) do
	# require 'debug'
	find("#books-list-search"). set("Laura Ingraham")
	# require 'debug'
    find(".front-booklist-submit").click
end

Then(/^check for laura Ingraham in the list$/) do
   # require 'debug'

  data_container=all(".front-booklist-info-container")
     puts data_container.count
     str="Laura Ingraham"
     if str==data_container[0].find(".books-front-meta-authorInfo").text
       print "Found\n"  
      else
         print "Not Found\n"
     end
end