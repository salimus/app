class FeaturedScreen < ScreenActions

  def featured_button_value
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATabBar[1]/UIAButton[1]")
  end

  def movie_list
    find_element(:class_name, "UIATableView").find_elements(:class_name, "UIATableCell")
  end

  def tap_movie_result(cell = 1)
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[#{cell}]")
  end

  def movie_ttl
    find_element(:name, "title_label")
  end

  def movie_year
    find_element(:name, "year_label")
  end

  def movie_rtng
    find_element(:name, "rating_label")
  end

  def back
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[2]")
  end

end