class BloodStatusesController < ApplicationController
  before_action :set_blood_status, only: [:show, :edit, :update, :destroy]

  # GET /blood_statuses
  # GET /blood_statuses.json
  def index
    @blood_statuses = BloodStatus.all
  end

  # GET /blood_statuses/1
  # GET /blood_statuses/1.json
  def show
  end

  # GET /blood_statuses/new
  def new
    @blood_status = BloodStatus.new
  end

  # GET /blood_statuses/1/edit
  def edit
  end

  # POST /blood_statuses
  # POST /blood_statuses.json
  def create
    @blood_status = BloodStatus.new(blood_status_params)

    respond_to do |format|
      if @blood_status.save
        format.html { redirect_to @blood_status, notice: 'Blood status was successfully created.' }
        format.json { render :show, status: :created, location: @blood_status }
      else
        format.html { render :new }
        format.json { render json: @blood_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_statuses/1
  # PATCH/PUT /blood_statuses/1.json
  def update
    respond_to do |format|
      if @blood_status.update(blood_status_params)
        format.html { redirect_to @blood_status, notice: 'Blood status was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_status }
      else
        format.html { render :edit }
        format.json { render json: @blood_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_statuses/1
  # DELETE /blood_statuses/1.json
  def destroy
    @blood_status.destroy
    respond_to do |format|
      format.html { redirect_to blood_statuses_url, notice: 'Blood status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_status
      @blood_status = BloodStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_status_params
      params.require(:blood_status).permit(:kind, :character_id)
    end
end
