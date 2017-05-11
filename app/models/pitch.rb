class Pitch < ApplicationRecord
  validate :name
  validate :description
  validate :student_id 

  belongs_to :student
  has_many :votes
  

end
