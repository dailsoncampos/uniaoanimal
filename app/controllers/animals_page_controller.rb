class AnimalsPageController < ApplicationController
  def index
    @animals_found = Animal.paginate(page: params[:page], per_page: 12).order(created_at: :desc)
    @q = Animal.ransack(params[:q])
    @animais_search = @q.result.disponivel.paginate(page: params[:page], per_page: 12).order(updated_at: :desc)
  end

  def show
    @animal = Animal.friendly.find(params[:id])
    @status = @animal.adoption
  end
end
