class PostsController < ApplicationController

def index
  @users = User.all.order("updated_at DESC")
  @posts = Post.all.order("updated_at DESC")
end

def show
  @post=Post.find(params[:id])
  
  
end

def new
  @post=current_user.posts.new
end

def setting
  @user = User.all
  @posts = Post.all
end
def create
  @post=current_user.posts.new(post_params)
  if @post.topic==''
    @post.topic="New"
  end
  if @post.save
  flash[:success] = "post successful"
  redirect_to posts_path
  else
    render 'new'
  end

end
def myposts
end
def commentstome
end
def postsselected
   @users = User.all.order("updated_at DESC")
   @array=session[:posts]
   @posts=Post.find(session[:posts])
end
def destroy
  Post.find(params[:id]).destroy
  flash[:success]= "post deleted"
  redirect_to posts_path
end

private

  def post_params
    params.require(:post).permit(:topic, :title, :content, :user_id)
  end
end

