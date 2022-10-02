Feature: demo Nopcommerce top acceptance criteria
  As a user,I would like to check acceptance criteria of Nopcommerce topmenu
  Background: User is on given URL
  When User type URL https://demo.nopcommerce.com
  And  User click on Enter button
  Then User is on given URL

  Scenario: Verify that user can navigate to books categor
    When  User is on given URL
    And   Click on Books tab on Top menu
    Then  User is navigated to book category page

  Scenario: Verify that user can see the Books category page with filter and list of products
    When   User is on given URL
    And    Click on Books tab on Top Menu
    And    Check filters and List Tap.
    Then   Books category page is displayed with with filter and list tabs

    Scenario: Verify that user can see 'Sort by' filter on Books category page
      Given  User is on Books Category page
      When   User is on Books Category page
      And    Check 'Sort by' filter is present
      Then   'Sort by' filter is available on Book Category page

    Scenario: Verify that user can see 'Display' filter on Book category page
      Given  User is on Books category page
      When   User is on Books category page
      And    Check 'Display' filter is present
      Then  'Display' filter is available on Books category page

    Scenario: Verify that user can see 'Grid' tab on Books category page
      Given   User is on Books Category page
      When    User is on Books Category page
      And     Check 'Grid' tab is present
      Then    'Grid' tab is available on Book Category page

      Scenario: Verify that user can see 'List' tab on Books category page
        Given  User in Books Category page
        When   User in Books Category page
        And    Check 'List' tab is present
        Then   'List' tab is available on Book Category page

      Scenario: Verify that user can see 'Name: A to Z' selection is present in 'sort by' filter
        Given  User is on Books Category page
        When   User is on Books Category page
        And    Click on 'Sort by' filter
        And    Click on 'Name:A to Z' selection is present
        Then   'Name: A to Z' selection is present in 'sort by' filter

      Scenario: Verify that user can see 'Name: A to Z' selection is present
        Given  User is on Books Category page
        When   User is on Books Category page
        And    Click on 'sort by' filter
        And    Check that 'Name: A to Z' Selection is present
        Then   'Name: A to Z' selection is present in 'Sort by' filter

      Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
        Given  User is on Books Category page
        When   User is on Books Category page
        And    Click on 'Sort by' filter
        And    Check that 'Name: A to z' is first in oder
        Then   'Name:A to Z' is first option in oder

      Scenario: Verify that user can see 'Name:A to Z' filter option in 'Sort by' filter
        Given  User is on Books Category page
        When   User is on Books Category page
        And    Click on 'Sort by' filter
        And    Select 'Name: A to Z' filter
        Then   All Product are displayed in alphabetical oder




































