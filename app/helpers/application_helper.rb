module ApplicationHelper
  def maximum_section_count(batch_id)
    @batch = Batch.find(batch_id)
    @batch.sections.count < @batch.course.duration.split[0].to_i * 2
  end
end
