class PostsController < ApplicationController
  def index
    @posts = Post.all 
    #look in app/views/pages/index.html.erb
  end 

  def new
  end 

  def create
    @post = Post.create(title: params[:title], url: params[:url], content: params[:content])
    redirect_to '/'
  end 

  def show
    @post = Post.find_by(id: params[:id])
  end 

  private

  def post_params
    params.require(:post).permit(:title, :url)
  end 
end 