class ForumsController < ApplicationController

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
  redirect_to forums_path
  else
    render 'new'
  end

end
def selected_post
  
end
def destroy
  Post.find(params[:id]).destroy
  flash[:success]= "post deleted"
  redirect_to forums_path
end

private

  def post_params
    params.require(:post).permit(:topic, :title, :content, :user_id)
  end
end

