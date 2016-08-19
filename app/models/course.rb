class Course < ActiveRecord::Base
  belongs_to :department
  has_many :sections
  has_many :batches
end
