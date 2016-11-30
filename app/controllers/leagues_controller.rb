class LeaguesController < ApplicationController
	before_filter :authenticate_user! 


  def show
  	@leagues = League.all
  end

  def index
  	@leagues = League.all
  end

  def create
 	  l = League.new
  	l.name = params[:league][:name]
  	l.save!
    current_user.league_id = l.id
    current_user.save!

  	redirect_to "/"
  end

  def new
  end
end
