class Department < ActiveRecord::Base
  has_many :employees

  validates :name, uniqueness: true
  
end
