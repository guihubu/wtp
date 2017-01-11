class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user_account!

  def index
  	render :index
  end
end
