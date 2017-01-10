class PuppiesController < ApplicationController

  def index
    @puppies = Puppy.all
  end

  def show
    @puppy = Puppy.find_by(params[:id])
  end

  def new
  end

  def create
    @puppy = Puppy.new(name: params[:name], breed: params[:breed], cuteness: params[:cuteness])
    @puppy.save
  end

  def edit
  end

  def update
    puppy = Puppy.find_by(params[:id])
    puppy.assign_attributes(name: params[:name], breed: params[:breed], cuteness: params[:cuteness])
    puppy.save
  end

  def destroy
    @puppy = Puppy.find_by(params[:id])
    @puppy.destroy

    redirect_to "/puppies"
  end
end
