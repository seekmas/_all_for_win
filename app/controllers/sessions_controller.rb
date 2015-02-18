# encoding: utf-8
class SessionsController < Devise::OmniauthCallbacksController

  def create
    render :text => auth_hash
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end