class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :date_of_joining, :email, :designation, :mobile, :about, presence: true
  validates :email, uniqueness: true
end
