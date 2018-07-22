require 'capybara/dsl'

class Asos_shop
  include Capybara::DSL

  def womens_page
    visit('http://www.asos.com/women/')

  end

  def click_women
    click_link('WOMEN')
  end

  def clothing
    click_button('Clothing')
  end

  def new_in
    click_link('New in')
    sleep 2
  end

  def select_item
    find('._3x-5VWa').click
  end


end
