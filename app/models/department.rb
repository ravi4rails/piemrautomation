class Department < ActiveRecord::Base
  has_many :employees
  validates :name, :nickname, presence: true, uniqueness: true
end
