class HomeownerInsurancesController < ApplicationController
  before_action :set_homeowner_insurance, only: %i[ show edit update destroy ]
  before_action :set_quote, only: [:new, :create]

  # GET /homeowner_insurances or /homeowner_insurances.json
  def index
    @homeowner_insurances = HomeownerInsurance.all
  end

  # GET /homeowner_insurances/1 or /homeowner_insurances/1.json
  def show
  end

  # GET /homeowner_insurances/new
  def new
    unless @quote
      @homeowner_insurance = HomeownerInsurance.new
    end
    @homeowner_insurance
  end

  # GET /homeowner_insurances/1/edit
  def edit
  end

  # POST /homeowner_insurances or /homeowner_insurances.json
  def create
    # @homeowner_insurance = HomeownerInsurance.new(homeowner_insurance_params)
    if @quote
      @homeowner_insurance = HomeownerInsurance.new
      return redirect_to new_homeowner_insurance_url
    end

    respond_to do |format|
      if @homeowner_insurance.save
        format.html { redirect_to homeowner_insurance_url(@homeowner_insurance), notice: "Homeowner insurance was successfully created." }
        format.json { render :show, status: :created, location: @homeowner_insurance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @homeowner_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homeowner_insurances/1 or /homeowner_insurances/1.json
  def update
    respond_to do |format|
      if @homeowner_insurance.update(homeowner_insurance_params)
        format.html { redirect_to homeowner_insurance_url(@homeowner_insurance), notice: "Homeowner insurance was successfully updated." }
        format.json { render :show, status: :ok, location: @homeowner_insurance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @homeowner_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homeowner_insurances/1 or /homeowner_insurances/1.json
  def destroy
    @homeowner_insurance.destroy

    respond_to do |format|
      format.html { redirect_to homeowner_insurances_url, notice: "Homeowner insurance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_quote
    @quote = params[:quote] || false
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_homeowner_insurance
    @homeowner_insurance = HomeownerInsurance.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def homeowner_insurance_params
    params.fetch(:homeowner_insurance, {})
  end
end
