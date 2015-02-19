class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def wechat
    render :text => request.env["omniauth.auth"]
  end
end
