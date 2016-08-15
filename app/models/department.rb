class Department < ActiveRecord::Base
  has_many :employees
  has_many :courses
  validates :name, :nickname, presence: true, uniqueness: true
end
