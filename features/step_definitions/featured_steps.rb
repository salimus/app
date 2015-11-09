Given(/^I land on "([^"]*)" screen$/) do |featured|
  result = featured_screen.featured_button_value.text
  expect(result).to be == featured
end

And(/^should see (\d+) movies on the list$/) do |num|
  expect(featured_screen.movie_list.size).to be == num.to_i
  puts num
end

# This steps is similar with previous one ↑↑↑.
# I've put this steps for not printing to screen after each scenario_outline examples.
And(/^I should see (\d+) movies on the list$/) do |num|
  expect(featured_screen.movie_list.size).to be == num.to_i
end

Then(/^I open "([^"]*)" movie$/) do |cell|
  featured_screen.tap_movie_result(cell).click
end

And(/^I verify a "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |exp_ttl, exp_year, exp_rtng|
  actual_title = featured_screen.movie_ttl
  expect(actual_title.text.to_s).to include exp_ttl.to_s

  actual_year = featured_screen.movie_year
  expect(actual_year.text.to_i).to be == exp_year.to_i

  actual_rating = featured_screen.movie_rtng
  expect(actual_rating.text.to_i).to be == exp_rtng.to_i
end

Then(/^I open (\d+)(?:st|nd|rd|th)? movie$/) do |num|
  featured_screen.tap_movie_result(num).click
end

And(/^I collect the rating for the 1st movie$/) do
  @collect = []
  @collect << featured_screen.movie_rtng.text.to_s
  featured_screen.back.click
end

And(/^I collect the rating for the 2nd movie$/) do
  @collect << featured_screen.movie_rtng.text.to_s
  featured_screen.back.click
end

And(/^I collect the rating for the 3rd movie$/) do
  @collect << featured_screen.movie_rtng.text.to_s
  featured_screen.back.click
end

And(/^I collect the rating for the 4th movie$/) do
  @collect << featured_screen.movie_rtng.text.to_s
  featured_screen.back.click
end

And(/^I collect the rating for the 5th movie$/) do
  @collect << featured_screen.movie_rtng.text.to_s
  featured_screen.back.click
end

And(/^I print out the result of highest rating on screen$/) do
  puts @collect.sort.last.to_s
end