class Department < ActiveRecord::Base
  validates :name, :nickname, presence: true, uniqueness: true
end
