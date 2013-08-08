class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, flash[:success] => 'Post Successfully created!'
    else
      render 'new'
    end
  end
  
  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = 'Post was successfully updated.'
      redirect_to @post
    else
      flash[:error] = 'Failed to update Post.'
      render action: "edit"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
