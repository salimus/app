Feature: Movies Appium Home Work

  Scenario: Print out all movies on Featured screen
    Given I land on "Featured" screen
    And should see 17 movies on the list

  Scenario Outline: Open First 5 Movies and print Movie title/year and rating
    Given I land on "Featured" screen
    And I should see 17 movies on the list
    Then I open "<number>" movie
    And I verify a "<title>", "<year>" and "<rating>"

    Examples: title, year and rating
      | number | title                 | year | rating |
      | 1      | The Martian           | 2015 | ★7.7   |
      | 2      | Spectre               | 2015 | ★6.5   |
      | 3      | Crimson Peak          | 2015 | ★6.1   |
      | 4      | The Last Witch Hunter | 2015 | ★5.0   |
      | 5      | Necroland             | 2015 | ★9.0   |

  Scenario: Collect ratings for first 5 movies and printout the highest one into console
    Given I land on "Featured" screen
    Then I should see 17 movies on the list
    Then I open 1st movie
    And I collect the rating for the 1st movie
    Then I open 2nd movie
    And I collect the rating for the 2nd movie
    Then I open 3rd movie
    And I collect the rating for the 3rd movie
    Then I open 4th movie
    And I collect the rating for the 4th movie
    Then I open 5th movie
    And I collect the rating for the 5th movie
    Then I print out the result of highest rating on screen
# the Scenario #3 might has shortest way of implementation
