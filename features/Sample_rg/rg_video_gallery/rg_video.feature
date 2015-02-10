Feature: USAT Videos & Photos
   # will be using a scenario outline to navigate Videos & Photos then validate user can filter and only see filter media appear on screen.

 @rg_video @fronts
 Scenario Outline: Filter by Videos Only

    When Go directly to "<href>" front
    And Filter "<filter_type>" from Media Type Overlay
    Then I should see "<filter_type>" heading
    And I should see only "<filter_type>" on the page

  Examples:
    | href     | filter_type      |
    | /media/  |   All            |
    | /media/  | Videos           |
    | /media/  |  Photos          |
    
       



     












   