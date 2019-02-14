class DonorsController < ApplicationController
  before_action :set_donor, only: [:show, :edit, :update, :destroy]

  def index
    @donors = Donor.all
  end

  def show
  end

  def new
    @donor = Donor.new
    donation_for_select
  end

  def edit
    donation_for_select
  end

  def create
    @donor = Donor.new(donor_params)

    respond_to do |format|
      if @donor.save
        format.html { redirect_to thanks_donation_index_path, notice: 'Sua intenção de doação foi realizada com sucesso! Entraremos em contato para concluir o processo' }
        format.json { render :show, status: :created, location: @donor }
      else
        format.html { render :new }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @donor.update(donor_params)
        format.html { redirect_to @donor, notice: 'Donor was successfully updated.' }
        format.json { render :show, status: :ok, location: @donor }
      else
        format.html { render :edit }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @donor.destroy
    respond_to do |format|
      format.html { redirect_to donors_url, notice: 'Donor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def donation_for_select
      @donations_options_for_select = Donor.donations.keys.map {|donate| [donate.titleize,donate]}
    end

    def set_donor
      @donor = Donor.find(params[:id])
    end

    def donor_params
      params.require(:donor).permit(:name, :phone, :email, :donation, :message)
    end
end
