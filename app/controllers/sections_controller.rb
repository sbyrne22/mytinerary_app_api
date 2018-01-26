class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :update, :destroy]

  # GET /sections
  def index
    sections = Section.where(itinerary_id: params[:itinerary_id])

    render json: sections
  end

  # GET /sections/1
  def show
    render json: section
  end

  # POST /sections
  def create
    section = Section.new(section_params)
    section.itinerary_id = params[:itinerary_id]

    if section.save
      render json: section, status: :created
    else
      render json: section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sections/1
  def update
    if section.update(section_params)
      render json: section
    else
      render json: section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sections/1
  def destroy
    section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      section = Section.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def section_params
      params.require(:section).permit(:title, :description, :time_start, :time_end, :itinerary_id)
    end
end
