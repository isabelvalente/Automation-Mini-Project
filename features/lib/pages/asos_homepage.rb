require 'capybara/dsl'

class Asos_homepage
  include Capybara::DSL

  def visit_asos_homepage
    visit('http://www.asos.com/')
    sleep 1
  end

  def click_join_link
    find('#myAccountDropdown').click
    click_link 'Join'
    sleep 1
  end
end
