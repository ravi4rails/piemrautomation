class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :batch
  has_many :attachments, as: :attachable
  accepts_nested_attributes_for :attachments, reject_if: :all_blank, allow_destroy: true

  def section_name
    "#{self.batch.course.name} #{self.name} #{self.begining.strftime('%b')} #{self.begining.strftime('%Y')} - #{self.closing.strftime('%b')} #{self.closing.strftime('%Y')}"
  end

end
