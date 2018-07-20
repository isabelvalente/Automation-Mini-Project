Feature: ASOS Join

  Scenario: A user wants to join ASOS
    Given I access the Asos homepage
    When I click the join link
    Then I should be redirected to the register page

  @tag1
  Scenario Outline:
    Given I access the ASOS register pages
    And I fill the following email details: <email>
    And I fill in invalid details <firstname> <lastname> <password> <day> <month> <year>
    When I click submit
    Then I should see the following error: <error>

    Examples:
    | email    | firstname | lastname  | password  | day | month | year | error |
    | te&me@E.com   |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | tes@t.com.com |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | te@st         |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | tes@=t.com    |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | test.com      |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    |               |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Oops! You need to type your email here  |
    | 123456        |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | tes@123&4     |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | tes@123.4     |  Ellie    |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    # Name Errors
    | tes@ter.com   |  Ellie12  |  May      | Testing1  | 19  | April  | 1994 | Email fail! Please type in your correct email address |
    | tes@ter.com   |  Ellie&   |  May      | Testing1  | 19  | April  | 1994 | First name must not contain <, >, &, " or . |
