class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def new 
  #   @dog = Dog.new
  # end

  # def create
  #   @dog = Dog.new(dog_params)

  #   if @dog.valid?
  #     @dog.save
  #     redirect_to @dog
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @dog = Dog.find(params[:id])
  # end

  # def update
  #   @dog = Dog.find(params[:id])

  #   if @dog.update(dog_params)
  #     redirect_to @dog
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @dog = Dog.find(params[:id]).destroy
  # end

  # private

  # def dog_params
  #   params.require(:dog).permit(:name, :breed, :age)
  # end
end
