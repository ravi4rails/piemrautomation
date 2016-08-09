class Employee < ActiveRecord::Base
  belongs_to :department
  validates :first_name, :last_name, :date_of_joining, :email, :designation, :mobile, :about, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
