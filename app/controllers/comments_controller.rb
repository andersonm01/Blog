class CommentsController < ApplicationController
  def create
    @post = Post.find(comment_params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to posts_path
    else
      render 'posts/show'
    end
  end

  def destroy 
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to comments_path, status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body, :post_id, :user_id)
  end
end