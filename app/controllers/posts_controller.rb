class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def create
    Post.create(user_id: params[:user_id], body: params[:body])
    redirect_to "/users/#{params[:user_id]}"
  end

  def update
  end

  def destroy
  end


end
