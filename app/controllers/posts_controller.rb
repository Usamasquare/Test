class PostsController < ApplicationController

  before_action :find_post, only: [:show,:edit,:destroy]
  def index
    #@post and @posts both are instance variables 
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post  = Post.new
    @post.comments.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render ‘new’
    end
    
  end

  def edit
  end


  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render edit
    end
  end

def destroy
  @post.destroy
  redirect_to root_path
end


  def show 
    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.utest
      format.xml  { render xml: @posts }
      format.json { render json: @posts }
    end
    #render js: "alert('Hello Rails');"

  end

  private

  def find_post
    @post = Post.find(params[:id])
  end
  
      #@post.comments.create(params[:comments_attributes])
  def post_params
    params.require(:post).permit(:title,:body,:id, comments_attributes:[:commenter])
    
  end
end
