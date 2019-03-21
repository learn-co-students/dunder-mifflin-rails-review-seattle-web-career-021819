class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  # def show
  # end

  def new
    @dog = Dog.new
  end

  def create
  end

  # def edit
  # end

  def update
  end

  def destroy
  end
  
  private

  def dog_params
    params.require(:dogs).permit(:name, :breed, :age)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end

end
