class AnimalsPageController < ApplicationController
  def index
    @animals = Animal.all.order(date: :desc)
  end

  def show
    @animals_found = Animal.where(condition: params[:condition])
  end
end
