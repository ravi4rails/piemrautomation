class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :new_batch_form]

  def index
    @search = Course.search(params[:q])
    @courses = @search.result
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @course }
      else
        format.js
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.js
        format.json { render :show, status: :ok, location: @course }
      else
        format.js
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_new_batch
    @batch = Batch.create(batch_params)
    if @batch.end_year >= Date.today
      @batch.update(:is_active => true)
    else
      @batch.update(:is_active => false)
    end
    respond_to do |format|
      format.js
    end
  end

  def new_batch_form
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def batch_params
      params.require(:add_new_batch).permit(:start_year, :end_year, :course_id)
    end

    def course_params
      params.require(:course).permit(:name, :department_id, :duration)
    end
end
