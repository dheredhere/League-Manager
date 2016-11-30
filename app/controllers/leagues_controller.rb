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
  	l.creator_id = current_user.id
  	l.save!
  	redirect_to "/"
  end

  def new
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy
    redirect_to "/"
  end
end
