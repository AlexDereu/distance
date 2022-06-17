class VillesController < ApplicationController
  def index
    @villes = Ville.all
  end

  def new
    @ville = Ville.new
  end

  def show
    @ville = Ville.find(params[:id])
  end

  def create
    @ville = Ville.new(ville_params)
    if @ville.save
      redirect_to ville_path(@ville)
    end
  end

  def edit
    @ville = Ville.find(params[:id])
  end

  def update
    @ville = Ville.find(params[:id])
    @ville.update(ville_params)
    redirect_to ville_path(@ville)
  end

  def destroy
    @ville = Ville.find(params[:id])
    @ville.destroy
    redirect_to villes_path, status: :see_other
  end

  private

  def ville_params
    params.require(:ville).permit(:name, :latitude, :longitude)
  end
end
