Feature: USAT Fronts
  This will be using a scenario outline to navigate all the top level fronts and validate that correct front appears.

   @rg1 @fronts
  Scenario Outline: Section Fronts
   When Go directly to "<section_href>" front
    Then I should see "<front_header_class>" front

    
    Examples:
    | section_href    | front_header_class                |
    |   /news/        |       news                        |
    |   /sports/      |       sports                      |               
    |   /life/        |       life                        |
    |   /money/       |       money                       | 
    |   /tech/        |       tech                        |
    |   /travel/      |       travel                      |
    |   /opinion/     |       opinion                     |