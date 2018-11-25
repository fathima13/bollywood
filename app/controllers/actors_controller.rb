class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def new
  	@actor = Actor.new
  end
  def create
  	@actor = Actor.new(post_params)
  	if @actor.save
  		redirect_to actors_url
  	else
  		redirect_to new_actor_url
  	end
  end

  def edit
  	@actor = Actor.find(params[:id])
  	end
  def update
  	@actor = Actor.find(params[:id])
  	@actor.attributes = post_params
  	if @actor.save
  		redirect_to actors_url
  	else
  		redirect_to edit_actor_url(@actor.id)
  	end
  end
  def show
  	@actor = Actor.find(params[:id])
  end

  def destroy
  	@actor = Actor.find(params[:id])
  	@actor.destroy
  	redirect_to actors_url
  end
  private
  def post_params
  	params.require(:actor).permit(:name,:age,:country)
  end
end
