class Api::V1::AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def animal_params
    params.permit(:name, :age, :breed)
  end
end