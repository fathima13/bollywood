class MoviesController < ApplicationController
  def index
  end
  def new
  	@actor = Actor.find(params[:actor_id])
  	@movie = @actor.movies.build
  end

  def create
  	@actor = Actor.find(params[:actor_id])
  	@movie = @actor.movies.build(post_params)
  	if @movie.valid?
      if @movie.save
  		redirect_to actor_url(@actor.id)
      end
  	else
      render :new

  		#redirect_to new_actor_url(@actor.id)
  	end
  end

  def edit
  	@actor = Actor.find(params[:actor_id])
  	@movie = @actor.movies.find(params[:id])
  end
  def update
    @actor = Actor.find(params[:actor_id])
    @movie = @actor.movies.find(params[:id])
    @movie.attributes = post_params
    if @movie.save
      redirect_to actor_url(@actor.id)
    else
      redirect_to edit_actor_url(@actor.id,@movie.id)
    end
  end

  def destroy
    @actor = Actor.find(params[:actor_id])
    @movie = @actor.movies.find(params[:id])
    @movie.destroy
    redirect_to actor_url(@actor.id)
  end
  private
  def post_params
  	params.require(:movie).permit(:name,:status,:director_name,:club)
  end
end
