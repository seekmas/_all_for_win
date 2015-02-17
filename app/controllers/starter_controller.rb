class StarterController < ApplicationController
  before_action :authenticate_user!

  def index

    if params[:id] == nil
      @user = Alias.find_by(:user_id => current_user.id)
    else
      @user = Alias.find_by(:user_id => params[:id])
    end
    @comment = Comment.new
  end

  def comment
    @user = Alias.find(params[:id])
    @cover = Cover.find_by(:alias_id => @user.id)
    @comment = Comment.new
  end

end
