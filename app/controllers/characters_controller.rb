class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @television_show = TelevisionShow.find(params["television_show_id"])
    @character = Character.new(character_params)
    @character.television_show = @television_show
    if @character.save
     flash[:notice] = "thank you for your submission!"
    redirect_to television_show_path(@television_show)
    else
      flash[:notice] = "Unable to prossess your request!"
      render '/television_shows/show'
    end
  end

    def destroy
      @character = Character.find(params[:id])
      @character.destroy
      redirect_to characters_path
    end



  private

  def character_params
    params.require(:character).permit(:character_name, :actor_name)
  end
end
