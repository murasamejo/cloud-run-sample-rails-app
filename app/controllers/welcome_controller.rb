class WelcomeController < ApplicationController # rubocop:disable Style/Documentation, Style/FrozenStringLiteralComment
  def index
    @message = 'Hello, World!'
  end
end
