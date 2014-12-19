Feature: Order Multiple pizzas from Dominos Pizza online.


  @multiple_pizza

  Scenario: Store Search for Dominos Pizza

    When I click on the locations
    Then I enter my address and click continue
    And i select the delivery store location
    When i click on Pasta
  And click on the order button with Chicken Alfredo
  And click Add to order button with chicken Alfredo
  Then i should be on pasta page
When I click on Chicken in the navigation menu
  Then click on the order button with Specialty Chicken – Classic Hot Buffalo
   And click on Add to Order button in Specialty Chicken – Classic Hot Buffalo
   Then i should verify the checkout button
    When i click checkout and continue checkout
    And close the pop up 
  Then i should be on Place the order page.