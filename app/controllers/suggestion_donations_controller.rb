class SuggestionDonationsController < ApplicationController
  before_action :set_suggestion_donation, only: [:show, :edit, :update, :destroy]

  # GET /suggestion_donations
  # GET /suggestion_donations.json
  def index
    @suggestion_donations = SuggestionDonation.all
  end

  # GET /suggestion_donations/1
  # GET /suggestion_donations/1.json
  def show
  end

  # GET /suggestion_donations/new
  def new
    @suggestion_donation = SuggestionDonation.new
  end

  # GET /suggestion_donations/1/edit
  def edit
  end

  # POST /suggestion_donations
  # POST /suggestion_donations.json
  def create
    @suggestion_donation = SuggestionDonation.new(suggestion_donation_params)

    respond_to do |format|
      if @suggestion_donation.save
        format.html { redirect_to @suggestion_donation, notice: 'Suggestion donation was successfully created.' }
        format.json { render :show, status: :created, location: @suggestion_donation }
      else
        format.html { render :new }
        format.json { render json: @suggestion_donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestion_donations/1
  # PATCH/PUT /suggestion_donations/1.json
  def update
    respond_to do |format|
      if @suggestion_donation.update(suggestion_donation_params)
        format.html { redirect_to @suggestion_donation, notice: 'Suggestion donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestion_donation }
      else
        format.html { render :edit }
        format.json { render json: @suggestion_donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestion_donations/1
  # DELETE /suggestion_donations/1.json
  def destroy
    @suggestion_donation.destroy
    respond_to do |format|
      format.html { redirect_to suggestion_donations_url, notice: 'Suggestion donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestion_donation
      @suggestion_donation = SuggestionDonation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestion_donation_params
      params.require(:suggestion_donation).permit(:kind, :description)
    end
end
