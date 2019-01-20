class AnimalsPageController < ApplicationController
  def index
    @animals_found = Animal.all
  end

  def show
    # @animals_found = Animal.all
  end
end
