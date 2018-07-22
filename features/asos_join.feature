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
    | email         | firstname | lastname  | password  | day | month | year | error |
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
    | tes@ter.com   |  Ellie12  |  May      | Testing1  | 19  | April  | 1994 | First name must not contain numbers |
    | tes@ter.com   |  Ellie&   |  May      | Testing1  | 19  | April  | 1994 | First name must not contain <, >, &, " or . |
    | tes@ter.com   |  123456   |  May      | Testing1  | 19  | April  | 1994 | First name must not contain numbers |
    | tes@ter.com   |           |  May      | Testing1  | 19  | April  | 1994 | We need your first name – it’s nicer that way |
    # Password Errors
    | tes@te.com   | Ellie     |  May      | Test      | 19  | April  | 1994 | At least 6 letters and 1 number, please! |
    | tes@te.com   | Ellie     |  May      | 1233      | 19  | April  | 1994 | At least 6 letters and 1 number, please! |
    | tes@te.com   | Ellie     |  May      |           | 19  | April  | 1994 | Hey, we need a password here             |
    | tes@te.com   | Ellie     |  May      | Testing   | 19  | April  | 1994 | At least 6 letters and 1 number, please! |
    | tes@te.com   | Ellie     |  May      | 123456    | 19  | April  | 1994 | At least 6 letters and 1 number, please! |
    | tes@te.com   | Ellie     |  May      | !!!!!!!   | 19  | April  | 1994 | At least 6 letters and 1 number, please! |
    # DOB Errors
    | tester@test.com| Ellie     |  May      | Testing1  | DD  | Month  | YYYY | Enter your full date of birth |
    | tester@test.com| Ellie     |  May      | Testing1  | DD  | April  | 1994 | Enter your full date of birth |
    | tester@test.com| Ellie     |  May      | Testing1  | 19  | Month  | 1994 | Enter your full date of birth |
    | tester@test.com| Ellie     |  May      | Testing1  | 19  | April  | YYYY | Enter your full date of birth |
