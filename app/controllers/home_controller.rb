class HomeController < ApplicationController
  def index
    @users = User.all
    @trades = Trade.all
  end
end
