class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:show, :edit, :update, :destroy]

  # GET /consultations/new
  def new
    @consultation = Consultation.new
  end

  # POST /consultations
  # POST /consultations.json
  def create
    @consultation = Consultation.new(consultation_params)

    respond_to do |format|
      if @consultation.save
        format.html { redirect_to @consultation, notice: 'Consultation was successfully created.' }
        format.json { render :show, status: :created, location: @consultation }
      else
        format.html { render :new }
        format.json { render json: @consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultation_params
      params.require(:consultation).permit(:customer, :pictures, :style, :colors_materials_fabric, :furnish, :occupants, :must_have, :budget, :when, :other, :hate, :floor_plan, :state)
    end
end
