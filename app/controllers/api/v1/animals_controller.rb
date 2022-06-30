class Api::V1::AnimalsController < ApplicationController

  def index

  end

  def show

  end

  def create!

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