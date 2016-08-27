class CommentsController < ApplicationController
  def create
  	@board = Board.find(params[:board_id])
     @comment = @board.comments.build(params[:comment])
     if @comment.save
      redirect_to board_path(@board)
    else
      render :edit
    end
  end

  def edit
  	@board = Board.find(params[:board_id])
    @comment = Comment.find(params[:id])
  end

  def update
  	@board = Board.find(params[:board_id])
     @comment = Comment.find(params[:id])
     @comment.update_attributes(params[:comment])
     redirect_to board_path(@board)
  end

  def destroy
  	@board = Board.find(params[:board_id])
     @comment = Comment.find(params[:id])
     @comment.destroy
     redirect_to board_path(@board)
  end
end
