class Batch < ActiveRecord::Base
  belongs_to :course
  # before_create :default_status

  # def default_status
  #   if self.end_year >= Date.today
  #     self.is_active = true
  #   else
  #     self.is_active = false
  #   end
  # end

end
