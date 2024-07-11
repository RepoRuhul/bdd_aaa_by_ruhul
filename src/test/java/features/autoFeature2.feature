Feature: AutoQuote Validation 2 - Data Table or Data Driven Approach in BDD

  Background: 
    * print <msg>
      | 'Auto Quote Test' |
      | 'Hello May 2023'  |

  @xyz-234
  Scenario Outline: auto quote test 2
    Given homepage title is 'Welcome to AAA Northeast'
    And sub-title is 'To ensure you receive the best service possible,<br>please enter your zip code below:'
    And footer is 'AAA Northeast&nbsp; serves members in CT, MA, NH, NJ, NY &amp; RI.'
    When user click submit button
    Then verify zipcode error message is 'Please enter a valid ZIP code so we can direct you to the<br>AAA website in your area.'
    When user input zipcode <zipCode>
    Then verify zipcode length is <length>
    When user clear zipcode field
    And user click submit button

    Examples: 
      | zipCode | length |
      | 'abcd'  | '5'    |
      | '1a2b3' | '5'    |
      | '11423' | '5'    |

  @inline-table
  Scenario: auto quote test 3
    Given homepage title is 'Welcome to AAA Northeast'
    And sub-title is 'To ensure you receive the best service possible,<br>please enter your zip code below:'
    And footer is 'AAA Northeast&nbsp; serves members in CT, MA, NH, NJ, NY &amp; RI.'
    When user click submit button
    Then verify zipcode error message is 'Please enter a valid ZIP code so we can direct you to the<br>AAA website in your area.'
    When user input zipcode <zipCode>
      | 'abcd'  |
      | '1a2b3' |
      | '11423' |
    Then verify zipcode length is '5'
    When user clear zipcode field
    And user click submit button
