# encoding: utf-8


class StarterController < ApplicationController

  def index
    if params[:id] == nil
      if current_user == nil
        redirect_to new_user_session_path
      else
        @user = Alias.find_by(:user_id => current_user.id)
        @u = User.find(current_user.id)
        redirect_to card_path(@user.id)
      end


    else
      @user = Alias.find_by(:user_id => params[:id])
      @u = User.find(params[:id])
    end
    @comment = Comment.new
  end

  def comment
    @user = Alias.find(params[:id])
    @cover = Cover.find_by(:alias_id => @user.id)
    @comment = Comment.new
  end

end
