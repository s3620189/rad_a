class CommentsController < ApplicationController
   



  def show
    @post=Post.find(params[:post_id])
    
    @comments=@post.comments.all
    @comment=@post.comments.new
      session[:posts] ||= []
      session[:posts] << params[:post_id] 
      puts session[:posts].size
  end



  def new

    @post = Post.find(params[:post_id])
    @comment=@post.comments.new
    
  end

  def create
    @post = Post.find(params[:post_id]) 
    @comment=@post.comments.new(comment_params)
    @comment.user_id = current_user.id if current_user
    if @comment.save
      # successful save
      
      flash[:success] = "comment successful!"
      
      render 'show'
    else
      render 'show'
    end
  end

  def edit
    @user = User.find(params[:id])
    @post = current_user.posts.find(params[:id])
    @comment=@post.comments.find(params[:id])
  end



  def destroy
    current_user.comments.find(params[:id]).destroy
    flash[:success] = "comment deleted"
    redirect_to 'show'
  end

 

  private
  def comment_params
    params.require(:comment).permit(:comments)
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


end

