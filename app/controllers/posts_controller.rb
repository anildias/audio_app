class PostsController < ApplicationController
  def index
  	@post = Post.new
  	@posts = Post.all
  end

  def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, notice: "posted"
		else
			redirect_to posts_path, notice: "errro"
		end
  end

  def destroy
    Post.destroy(params[:id]) if params[:id]
    redirect_to posts_path, notice: "deleted"
  end

  def post_params
    params.require(:post).permit(:audio_file, :title)
  end
end
