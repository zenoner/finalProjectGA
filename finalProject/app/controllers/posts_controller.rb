class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @Post = Post.new(post_params.merge(user: current_user))
    # @Post.user = current_user
    # @Post.save
    # #Post.create(post_params)
    redirect_to "/"
  end

  def new
    @post = Post.new
  end
 ######### EDIT UPDATE AND DELETE ########################
  def edit
      @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_paramas)
    redirect_to "/"
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy
    else
      flash[:alert] = "Only the author of the post can do it "
    end
    @post.destroy
    redirect_to "/"
  end
######################################################
  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end


