class PostsController < ApplicationController
  before_action :find_post, only[:edit, :update, :show, :delete]

  def find_post
    @post = Post.find(params[:id])
  end
end
