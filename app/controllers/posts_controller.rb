class PostsController < ApplicationController
  
  def index
    @post = Post.all
  end
  
  def new 
    @post = Post.new
    @post.images.new
  end


  def create
    @post = Post.new(post_params)
    if @post.save
       redirect_to root_path
    else
     render :new
    end
  end

  def delete
  end

  def update
  end

  def destroy
  end


  def post_params
    params.require(:post).permit(:stage, :seatnumber, images_attributes: [:src])
  end






end
