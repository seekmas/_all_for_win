# encoding: utf-8
class AliasesController < ApplicationController
  before_action :set_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @aliases = Alias.all
    respond_with(@aliases)
  end

  def show
    respond_with(@alias)
  end

  def new
    @alias = Alias.new
    respond_with(@alias)
  end

  def edit
  end

  def create

    @alias = Alias.new(alias_params)
    @alias.user_id = current_user.id
    @alias.save
    respond_with(@alias)
  end

  def update
    @alias.update(alias_params)
    respond_to do |format|
      format.html { redirect_to root_path , :notice => 'Updated' }
    end
  end

  def destroy
    @alias.destroy
    respond_with(@alias)
  end

  private
    def set_alias
      @alias = Alias.find_by(:user_id => current_user.id)
    end

    def alias_params
      params.require(:alias).permit(:name, :avatar, :user_id)
    end
end
