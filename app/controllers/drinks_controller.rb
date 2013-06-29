class DrinksController < ApplicationController
  def index
    render json: Drink.all

  end
  def show
    render json: Drink.find(params[:id])
  end
end