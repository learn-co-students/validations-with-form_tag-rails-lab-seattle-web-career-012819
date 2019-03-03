class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    unless @post.update(post_params)
      render :edit
    else  
      redirect_to post_path(@post)
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
