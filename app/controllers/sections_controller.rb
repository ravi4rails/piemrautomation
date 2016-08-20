class SectionsController < ApplicationController
  before_action :set_section, only: [:edit, :update, :destroy]
  before_action :set_batch, only: [:new, :create]

  def index
    @sections = Section.all
  end

  def show
  end

  def new
    @batch.sections.build
  end

  def edit
  end

  def create
    @section = @batch.sections.create(section_params)
    respond_to do |format|
      if @section.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @section.update(section_params)
        format.js
      else
        format.js
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
      params.require(:section).permit(:name, :begining, :closing, :status)
    end

    def set_batch
      @batch = Batch.find(params[:batch_id])
    end
end
