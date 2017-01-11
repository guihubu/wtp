class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user_account!

  def index
    render :index
  end

  private

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
      root_path
    end
end
