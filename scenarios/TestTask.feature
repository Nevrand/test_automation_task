Feature: Search
  User can search for items

  Scenario: user can visit New page, click item and submit search
    Given user is on home page
    When user clicks on "new" category
    And user scrolls page
    And user clicks on 15 item
    And user scrolls page
    Then user sees "item_name" on product page
    And user sees "add_to_bag_button" on product page
    When user clicks on "search_icon" on header
    And user inputs "dresses" in "search_field" on header
    And user clicks on "submit_search_button" on header
    And user scrolls page
    And user sees "items_list" on products page
    Then user can see "search_term" with value "dresses" on products page