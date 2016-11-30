class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
        
  end

  def join
    u = current_user
    u.league_id = params[:id]
    u.save!
    redirect_to "/"
  end

end
