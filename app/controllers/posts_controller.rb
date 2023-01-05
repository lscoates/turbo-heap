class PostsController < ApplicationController
  def home
  end

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
  end
end
