class PetsController < ApplicationController
  # '/pets'
  def index
    @pets = Pet.all
  end

  # '/pets/:id'
  def show
    @pet = Pet.find(params[:id])
  end

  # '/pets/new'
  def new
    # this for the form
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      # render the new.html.erb again
      render :new, status: :unprocessable_entity
    end
  end

  # '/pets/:id/edit'
  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      # render the edit.html.erb again
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :location, :found_on)
  end
end
