class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show, :edit, :update, :destroy]

  # GET /phone_numbers
  # GET /phone_numbers.json
  def index
    @phone_numbers = PhoneNumber.all
  end

  # GET /phone_numbers/1
  # GET /phone_numbers/1.json
  def show
  end

  # GET /phone_numbers/new
  def new
    @phone_number = PhoneNumber.new(person_id: params[:person_id])
    # @phone_number = PhoneNumber.new(person_id: params[:person_id])
  end

  # GET /phone_numbers/1/edit
  def edit
  end

  # POST /phone_numbers
  # POST /phone_numbers.json
  def create
    @phone_number = PhoneNumber.create(phone_number_params)

    respond_to do |format|
      if @phone_number.save
        format.html { redirect_to @phone_number.person, notice: 'Phone number was successfully created.' }
        format.json { render action: 'show', status: :created, location: @phone_number }
      else
        format.html { render action: 'new' }
        format.json { render json: @phone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_numbers/1
  # PATCH/PUT /phone_numbers/1.json
  def update
    respond_to do |format|
      if @phone_number.update(phone_number_params)
        format.html { redirect_to @phone_number.person, notice: 'Phone number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_numbers/1
  # DELETE /phone_numbers/1.json
  def destroy
    @phone_number.destroy
    respond_to do |format|
      format.html { redirect_to phone_numbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_number
      @phone_number = PhoneNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_number_params
      params.require(:phone_number).permit(:number, :person_id)
    end
end
