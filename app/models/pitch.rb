class Pitch < ApplicationRecord
  validate :name
  validate :description
  validate :student_id



  belongs_to :student
  belongs_to :cohort, foreign_key: :student_id
  has_many :votes
  belongs_to :team, optional: true
end
