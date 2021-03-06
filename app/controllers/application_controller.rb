class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize


  private

    def authorize
      unless  User.find_by_id(session[:user_id]) then
      	redirect_to login_url, notice: "ログインしてください"
      end
    end
end
