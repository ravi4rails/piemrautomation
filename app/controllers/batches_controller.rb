class BatchesController < ApplicationController
  before_action :set_batch, only: [:edit, :update, :show]

  def edit
  end

  def show
    @images = ['k2.jpg', 'a1.jpg', 'm1.jpg', 's4.jpg', 's3.jpg', 'k2.jpg', 'a1.jpg', 'm1.jpg', 's4.jpg', 's3.jpg', 'k2.jpg', 'a1.jpg', 'm1.jpg', 's4.jpg', 's3.jpg', 'k2.jpg', 'a1.jpg', 'm1.jpg', 's4.jpg', 's3.jpg']
  end

  def update
    respond_to do |format|
      if @batch.update(batch_params)
        format.js
      else
        format.js
      end
    end
  end

  private

    def set_batch
      @batch = Batch.find(params[:id])
    end

    def batch_params
      params.require(:batch).permit(:start_year, :end_year, :course_id, :is_active)
    end
end