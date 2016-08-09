class Subject < ActiveRecord::Base
  validates :name, :nickname, presence: true, uniqueness: true
end
