class Pitch < ApplicationRecord
  validate :name
  validate :description
  validate :student_id 

  # belongs_to :student
  # belongs_to :cohort, through :student

end
