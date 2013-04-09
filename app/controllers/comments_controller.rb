class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  	redirect_to post_path(@post)
  	#뷰에 보이기 위해 redirect_to
  end


  def destroy
  end
end
