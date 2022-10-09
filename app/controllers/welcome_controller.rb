class WelcomeController < ApplicationController
  def index
    @message = 'Hello, World!'
    @text = 'Hello, Welcome World!'
  end
end
