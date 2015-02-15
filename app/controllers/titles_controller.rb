class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @titles = Title.all
    respond_with(@titles)
  end

  def get_title
    title = Title.find(params[:title_id])
    @title = UserTitle.find_by(:user_id => current_user.id , :title_id => title.id)
    if @title == nil
      current_user.titles << title
      current_user.save
    end

    respond_to do |format|
      format.html { redirect_to root_path , :notice => 'Get success' }
    end

  end

  def show
    respond_with(@title)
  end

  def new
    @title = Title.new
    respond_with(@title)
  end

  def edit
  end

  def create
    @title = Title.new(title_params)
    @title.save
    respond_with(@title)
  end

  def update
    @title.update(title_params)
    respond_with(@title)
  end

  def destroy
    @title.destroy
    respond_with(@title)
  end

  private
    def set_title
      @title = Title.find(params[:id])
    end

    def title_params
      params.require(:title).permit(:icon, :name, :color)
    end
end
