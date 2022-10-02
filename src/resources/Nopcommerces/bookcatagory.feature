Feature: Book category
  Background: I should be able to see homepage
    Given: I enter URL"https://demo.nopcommerce.com/" in browser
    And:   I am on home page
  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When  I am on home page
    Then  I should be able to see top menu tabs with "<category>
  Examples:
    |Categories        |
    |Computer          |
    |Electronic        |
    |Apparel           |
    |Digital downloads |
    |Books             |
    |Jewellery         |
    |Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tab on page
    Then I should be navigated to book category
    And  I should be able to see "<fitter>"
  Examples:
    |filters     |
    |Short by    |
    |Display     |
    |The Grid    |
    |List Tab    |

  Scenario Outline: I should be able to see list of terms of each filter
    Given  I am on book page
    When   I click on "<fitter>"
    Then   I should be able to see "<list>"in dropdown menu
  Examples:
    |filter    |list                                                                 |
    |sort by   |Name: AtoZ,name:ZtoA, Price: Low to High,Price:High to Low, Crated on|
    |Display   |3,6,9                                                                |
  Scenario Outline: I should be choose any fitter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
  Examples:
    |Filter   |option            |result                                                                 |
    |sort by  |Name: A to   Z    |sorted product with the product name in alphabetical order A to Z      |
    |sort by  |Name: Z to   A    |sorted product with the product name in alphabetical order Z to A      |
    |Sort by  |Price: low to high|select product with the price descending order                         |
    |Sort by  |Price: High to low|select product with the price ascending order                          |
    |sort by  |Created on        |Recently added product should be show  first                           |
    |Display  |3                 |3 product in a page                                                    |
    |Display  |6                 |6 product in a page                                                    |
    |Display  |9                 |9 product in a page                                                    |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
    Given I am on book page
    When  I click on "<display format icon>"
    Then  I should be able to to see product display format type as per given picture in SRS document
  Examples:
    |Display format icon|
    |Grid               |
    |List               |
