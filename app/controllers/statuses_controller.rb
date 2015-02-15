class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @statuses = Status.all
    respond_with(@statuses)
  end

  def show
    respond_with(@status)
  end

  def new
    @status = Status.new
    respond_with(@status)
  end

  def edit
  end

  def create
    @status = Status.new(status_params)
    @status.user_id = current_user.id
    @status.save
    respond_to do |format|
      format.html { redirect_to root_path , :notice => 'Add Status' }
    end
  end

  def update
    @status.update(status_params)
    respond_with(@status)
  end

  def destroy
    @status.destroy
    respond_with(@status)
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:status_text)
    end
end
