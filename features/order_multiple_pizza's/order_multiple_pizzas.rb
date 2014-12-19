
When(/^I click on the locations$/) do

  first(".qa-Cl_Loc").click

end

Then(/^I enter my address and click continue$/) do
	find(:id, 'Address_Type_Select').click
   find("option[value='Business']").click
  fill_in 'Street', :with => '7950 Jones branch dr'
  fill_in 'Address_Line_2', :with=> 'Floor #2'
  fill_in 'City', :with =>'Mclean'
  find(:id, 'Region').click
   find("option[value='VA']").click
  fill_in'Zip', :with =>'22102'
  #sleep(10)
  click_link_or_button("Continue")
end

When(/^i select the delivery store location$/) do
	# page.has_content?('Store #4349')
	#expect(page).to have_content('Store #4349')
    # page.should have_content('Store #4349')
    #find(".js-orderDeliveryNow btn btn--block").click
    click_link_or_button("Order Delivery")
  end
  When(/^i click on Pasta$/) do
  click_link_or_button("Pasta")
end

  	

Then(/^click on the order button with Chicken Alfredo$/) do
	find(".products.card__body.grid").first(".media.grid__cell--one-quarter.grid__cell--handheld--one-half").click
end

Then(/^click Add to order button with chicken Alfredo$/) do
  find(".btn.js-isNew").click
end

Then(/^i should be on pasta page$/) do
  
  expect(page).to have_css('h1[class="card__title"]')

end


When(/^I click on Chicken in the navigation menu$/) do
  find(".navigation-Wings").click
end

Then(/^click on the order button with Specialty Chicken – Classic Hot Buffalo$/) do
  find(".products.card__body.grid").all(".media.grid__cell--one-quarter.grid__cell--handheld--one-half")[1].click

  # click_button("Order")
end

Then(/^click on Add to Order button in Specialty Chicken – Classic Hot Buffalo$/) do
  find(".btn.js-isNew").click
end


Then(/^click on Add to Order button$/) do
  click_button('submit')
 end

 Then(/^i should verify the checkout button$/) do
  find(".form__control-group--actions--aligncenter").click
end

When(/^i click checkout and continue checkout$/) do
  click_link_or_button("Continue")
  # find(".btn btn--large btn--block submitButton qa-OrCheck js-continueCheckout").click
end


When(/^close the pop up\.$/) do
  
end

Then(/^i should be on Place the order page\.$/) do
  expect(page).to have_css(".js-placeOrder")
end



















# When(/^I enter my address and click continue$/) do
#   click_button('btn media__btn none--handheld') 
#   click_button('form__input--icon Delivery active')
#   select_Address_Type "House" 
#   fill_in('Street', :with => '7950 Jones branch dr')
#   fill_in('Address_Line_2', :with=> 'Floor #2')
#   fill_in('City', :with =>'Mclean')
#   select_state "VA"
#   fill_in('Zip', :with =>'22102')
#   click_button('btn btn--large')
# end

# Then(/^I click on order delivery button of store under Your Delivery Store$/) do
#   pending # express the regexp above with the code you wish you had
# end