class AdoptionsController < ApplicationController
  before_action :set_adoption, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_adopter!

  def index
    @adoptions = Adoption.all
  end

  def show
  end

  def new
    @adoption = Adoption.new
    @animal = Animal.find(params[:animal_id])
    @adopter = current_adopter
  end

  def edit
  end

  def create
    @adoption = Adoption.new(adoption_params)

    respond_to do |format|
      if @adoption.save
        adopt_hash = adoption_params.to_h
        Adoption.create(adopter_id: current_adopter.id.to_i, animal_id: adopt_hash[:animal_id].to_i)
        format.html { redirect_to @adoption, notice: 'Solicitação de adoção realizada com sucesso!' }
        format.json { render :show, status: :created, location: @adoption }
      else
        format.html { render :new }
        format.json { render json: @adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @adoption.update(adoption_params)
        format.html { redirect_to @adoption, notice: 'Adoption was successfully updated.' }
        format.json { render :show, status: :ok, location: @adoption }
      else
        format.html { render :edit }
        format.json { render json: @adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @adoption.destroy
    respond_to do |format|
      format.html { redirect_to adoptions_url, notice: 'Adoption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_adoption
    @adoption = Adoption.find(params[:id])
  end

  def adoption_params
    params.require(:adoption).permit(:status, :adopter_id, :animal_id)
  end
end
