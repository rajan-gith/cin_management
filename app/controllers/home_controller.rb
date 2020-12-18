class HomeController < ApplicationController
  def index
    @cin = Cin.new
  end
end
