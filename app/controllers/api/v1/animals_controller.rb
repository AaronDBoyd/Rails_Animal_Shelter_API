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
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update!(animal_params)
    json_response(@animal)
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
        message: "This animal has been seccessfully adopted."
      } 
    end
  end

  private

  def animal_params
    params.permit(:name, :age, :breed)
  end
end