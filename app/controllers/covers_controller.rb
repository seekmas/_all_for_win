class CoversController < ApplicationController
  before_action :set_cover, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @covers = Cover.all
    respond_with(@covers)
  end

  def show
    respond_with(@cover)
  end

  def new
    @alias = Alias.find_by(:user_id => current_user.id)
    @cover = Cover.find_by(:alias_id => @alias.id)
    if @cover
      redirect_to edit_cover_path(@cover)
    else
      @cover = Cover.new
      respond_with(@cover)
    end

  end

  def edit
  end

  def create
    @cover = Cover.find_by(:user_id => current_user.id)
    @alias = Alias.find_by(:user_id => current_user.id)

    if @cover
      redirect_to edit_cover_path(@cover)
    else
      @cover = Cover.new(cover_params)
      @cover.alias_id = @alias.id
      @cover.save
      respond_with(@cover)
    end
  end

  def update
    @cover.update(cover_params)
    redirect_to edit_cover_path(@cover)
  end

  def destroy
    @cover.destroy
    respond_with(@cover)
  end

  private
    def set_cover
      @cover = Cover.find(params[:id])
    end

    def cover_params
      params.require(:cover).permit(:cover)
    end
end
