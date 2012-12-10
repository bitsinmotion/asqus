class HomeController < ApplicationController

  def index
    @users = User.all
  end

  def home
    @users = User.all
  end



end
