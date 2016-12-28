class PostsController < ApplicationController
  # before_action :find_post, only:[:edit, :update, :show, :delete]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Successfully created Blog"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new Blog"
      render :new
    end
  end

  def edit
  end

  def update

  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
