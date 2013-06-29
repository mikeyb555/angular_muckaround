class DrinksController < ApplicationController
  def index
    render json: Drink.all

  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(params[:drink])
    if @drink.save
      flash[:success] = "Drink Added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    render json: Drink.find(params[:id])
  end
end