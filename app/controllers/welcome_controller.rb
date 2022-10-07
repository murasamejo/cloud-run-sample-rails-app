class WelcomeController < ApplicationController # rubocop:disable Style/FrozenStringLiteralComment
  def index
    @message = 'Hello, World!'
  end
end
