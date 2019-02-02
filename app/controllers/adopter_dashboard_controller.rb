class AdopterDashboardController < ApplicationController
  before_action :authenticate_adopter!
  before_action :set_adopter

  def index
  end

  def show
  end

  private

  def set_adopter
    @adopter = Adopter.find_by(id: current_adopter)
  end
end
