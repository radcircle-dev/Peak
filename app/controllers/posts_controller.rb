class PostsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def index
  	@posts = Post.all
  end

  def new
  	
    	@post = Post.new
    
  end

  def show
  	@post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post = @post
  end

  def create
  	@post = Post.new(post_params)
    @post.user = current_user
  	if @post.save
     
  		redirect_to @post
  	else

  		render 'new'
  	end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  private
  	def post_params
  		params.require(:post).permit(:title, :subtitle, :body, :link, :artist, :song, :author)
  	end

end
