# coding: utf-8

class SessionController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by_account(params[:account])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user    # userを解析し、'/users/:id'にリダイレクト
    else
      redirect_to login_path, alert: "無効なユーザ名/パスワードの組み合わせです。"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to tops_index_path
  end
end
