class PostsController < ApplicationController
  before_action :find_post, only[:edit, :update, :show, :delete]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save(post_params)
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

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
