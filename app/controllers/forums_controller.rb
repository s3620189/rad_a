class ForumsController < ApplicationController

def index
  @users = User.all
end

def show
  @user=User.find(params[:id])
  
end

def users

    @forum=Forum.find(params[:id])
    @values=@forum.users.paginate(page: params[:page])
    render 'index'

end

def edit
end
end
