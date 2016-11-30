class MatchesController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def create
    m = Match.new
    m.league_id = current_user.league_id
    m.player1_id = current_user.id
    m.player2_id = params[:match][:user_id]
    if params[:match][:match_result] == "Win"
      m.result = 0
    else
      m.result = 1
    end
    m.save!
    redirect_to "/"
  end

end
