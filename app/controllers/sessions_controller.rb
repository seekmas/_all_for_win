class SessionsController < ApplicationController
  def create
    @user = User.where(auth_hash: auth_hash).first_or_create
    current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end