class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, flash[:success] => 'Post was Successfully created!'
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
      redirect_to posts_url, flash[:success] => "#{@post.title} was successfully deleted."
    else
      redirect_to @post, flash[:error] => 'Failed to delete post.'
    end
  end
end
