Feature: USAT_ All
   will be using a scenario outline to navigate Videos & Photos then validate user can filter All 
@rg_all
Scenario: Filter by All Types
     When Go directly to "/media/" front
    And Filter "All" from Media Type Overlay
    Then I should see "Videos & Photos" heading
    And I should see both videos and photos on the page