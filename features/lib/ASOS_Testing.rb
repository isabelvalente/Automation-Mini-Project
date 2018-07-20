require 'capybara/dsl'
require_relative './pages/asos_homepage.rb'
require_relative './pages/asos_join.rb'

class ASOS_Testing

  def asos_homepage
    Asos_homepage.new
  end

  def asos_join
    Asos_join.new
  end


end
