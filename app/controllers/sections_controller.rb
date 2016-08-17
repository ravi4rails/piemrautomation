class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  def index
    @sections = Section.all
  end

  def show
  end

  def new
    @section = Section.new
    @section.attachments.build
  end

  def edit
    @section.attachments.build
  end

  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url, notice: 'Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_section
      @section = Section.find(params[:id])
    end

    def section_params
      params.require(:section).permit(:name, :course_id, attachments_attributes: [:id, :attachment, :_destroy])
    end
end
