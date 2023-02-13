class WelcomeController < ApplicationController
  def welcome_user
    @user_url = params[:id]
  end
end
