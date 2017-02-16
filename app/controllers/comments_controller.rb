class CommentsController < ApplicationController
  def new
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new
  end

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new(comment_params)
    @comment.owner_id = current_user.id
    if @comment.save
      binding.pry
      flash[:notice] = "Your comment was saved"
      redirect_to image_path(current_user, @image)
    else
      flash[:alert] = "There was a problem uploading your comment. Please try again."
      render :new
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
