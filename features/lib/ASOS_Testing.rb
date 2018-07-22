require 'capybara/dsl'
require_relative './pages/asos_homepage.rb'
require_relative './pages/asos_join.rb'
require_relative './pages/asos_shop.rb'

class ASOS_Testing

  def asos_homepage
    Asos_homepage.new
  end

  def asos_join
    Asos_join.new
  end

  def asos_shop
    Asos_shop.new
  end


end
