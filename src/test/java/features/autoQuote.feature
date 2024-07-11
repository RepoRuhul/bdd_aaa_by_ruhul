Feature: Validating AAA Northeast popup

  @regression @auto @smoke
  Scenario: auto quote test
    Given homepage title is 'Welcome to AAA Northeast'
    And sub-title is 'To ensure you receive the best service possible,<br>please enter your zip code below:'
    And footer is 'AAA Northeast&nbsp; serves members in CT, MA, NH, NJ, NY &amp; RI.'
    When user click submit button
    Then verify zipcode error message is 'Please enter a valid ZIP code so we can direct you to the<br>AAA website in your area.'
    When user input zipcode 'abcd'
    Then verify zipcode length is '5'
    When user clear zipcode field
    And user input zipcode '1a2b3'
    And user click submit button
    Then verify zipcode error message is 'Please enter a valid ZIP code so we can direct you to the<br>AAA website in your area.'
    When user clear zipcode field
    And user input zipcode '11418'
    And user click submit button
    Then verify homepage title is 'Home | AAA Northeast'

	@xyz-456
  Scenario: auto quote test 2
    Given homepage title is 'Welcome to AAA Northeast'
    And sub-title is 'To ensure you receive the best service possible,<br>please enter your zip code below:'
    And footer is 'AAA Northeast&nbsp; serves members in CT, MA, NH, NJ, NY &amp; RI.'
    When user click submit button
    Then verify zipcode error message is 'Please enter a valid ZIP code so we can direct you to the<br>AAA website in your area.'
    When user input zipcode 'abcd'
    Then verify zipcode length is '5'
    When user clear zipcode field
    And user input zipcode '1a2b3'
    And user click submit button
