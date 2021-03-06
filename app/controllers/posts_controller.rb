class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
      flash[:notice] = "Post successfully created"
  		redirect_to @post
      
  	else
      flash[:alert] = "Error, try again"
  		render 'new'
  	end
	end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

  private

  	def post_params
  		params.require(:post).permit(:title, :body, :date)
  	end

    def set_post
      @post = Post.find(params[:id])
    end
end