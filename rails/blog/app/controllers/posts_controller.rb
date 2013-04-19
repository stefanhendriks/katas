class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    if @post.save
      flash[:notice] = "Saved!"
    else
      flash[:error] = "Error while saving"
    end
    render :edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.save
      redirect_to @post, notice: 'post was successfully created.'
    else
      render :new
    end
  end

  def destroy
    p = Post.find(params[:id])
    p.destroy
    flash[:notice] = "Post '#{p.title}' deleted"
    redirect_to :root
  end

end
