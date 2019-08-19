class Instigator::CatsController < ApplicationController
  before_action :authenticate_user!

  def new
    @cat = Cat.new
  end

  def create
    @cat = current_user.cats.create(cat_params)
    redirect_to instigator_cat_path(@cat)
  end

  def show
    @cat = Cat.find(params[:id])
  end

  private

  def cat_params
    params.require(:cat).permit(:title, :description)
  end

end
