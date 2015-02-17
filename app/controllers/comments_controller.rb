# encoding: utf-8
class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create

    @comments = Comment.where(:user_id => current_user.id , :alias_id => comment_params[:alias_id]).count(:id)
    if @comments > 0
      redirect_to list_comment_path(comment_params[:alias_id]) , :notice => '你已经评论过了'
    else
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id

      @comment.save
      redirect_to list_comment_path(comment_params[:alias_id]) , :notice => '评论成功'
    end
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:comment, :alias_id)
    end
end
