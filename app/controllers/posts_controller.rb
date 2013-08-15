class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = 'Post was successfully created!'
      redirect_to @post
    else
      render 'new'
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = 'Post was successfully updated!'
      redirect_to @post
    else
      flash[:error] = 'Failed to update Post.'
      render action: :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:success] = "#{@post.title} was successfully deleted."
      redirect_to posts_url
    else
      flash[:error] = 'Failed to delete post.'
      redirect_to @post 
    end
  end
end
