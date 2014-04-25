class AdminController < ApplicationController
　　before_action :user_authentication, only: [:index]
  def index
  end
end
