class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.user_id = current_user.id
    @comment.post_id = Integer(params[:post_id])
        if @comment.save
          flash[:success]="Commented successfully"
          redirect_to :back
        else
          render 'new'
        end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success]="Successfully deleted the comment"
    redirect_to :back
  end

  def edit
  end
end
