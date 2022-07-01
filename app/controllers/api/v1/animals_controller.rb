class Api::V1::AnimalsController < ApplicationController

  def index
    if params[:name].present?
      name = params[:name]
      @animals = Animal.search_name(name)
    elsif params[:breed].present?
      breed = params[:breed]
      @animals = Animal.search_breed(breed)
    elsif params[:page].present?
      @animals = Animal.order('name ASC').paginate(:page => params[:page], per_page:10)
    elsif params[:random].present?
      @animals = Animal.all.sample
    else
      @animals = Animal.order('name ASC')
    end
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