class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    # @posts = Posts.create(title: params[:title], description: params[:description])

end

def create
  Post.create(title: params[:post][:title], description: params[:post][:description], age: params[:post][:age])
  redirect_to posts_path
end

end
