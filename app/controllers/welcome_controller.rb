class WelcomeController < ApplicationController
  def index
    @users = User.all
    @companies = Company.all
  end
end
