class WelcomeController < ApplicationController
  def index
  	if team_signed_in?
      redirect_to dashboard_index_path
    end
  end
end
