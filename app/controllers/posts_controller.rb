class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  require 'json'


  def index 
  	@posts = Post.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.order("created_at DESC")
    end
    
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

    respond_to do |format|
      if @post.save
        
        format.html { redirect_to @post, notice: 'Post was created' }
        format.js   {}
        format.json { render json: @post, status: :created, location: @song }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  	#if @post.save
  	#	redirect_to @post
  	#else
  	#	render 'new'
  	#end
    
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
  		params.require(:post).permit(:title, :subtitle, :body, :link, :artist, :author, :song_id)
  	end

    after_filter :set_access_control_headers

  def set_access_control_headers 
  headers['Access-Control-Allow-Origin'] = '*' 
  headers['Access-Control-Request-Method'] = '*' 
  end

end
