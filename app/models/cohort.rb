class Cohort < ApplicationRecord
  has_many :students
  has_many :pitches, through: :students

	validates :name, presence: true
	validates_uniqueness_of :name
	validates :pitch_limit, presence: true
	validates :vote_limit, presence: true
	validates :pitch_start, presence: true
	validates :vote_start, presence: true
	validates :vote_end, presence: true
      validate :validate_pitches


  def validate_pitches
    self.students.each do |s|
      if self.pitches.select {|x| x.student_id == s.id}.count > pitch_limit
        errors.add(:pitches,"Pitch limit exceeded for #{s.full_name}")
        p s.id
        p self.pitches.select {|x| x.student_id == s.id}.count
      end
    end
  end
  def self.active
    Cohort.all.select do |c|
      c.active == true
    end
  end

  def current_pitches
    self.pitches.select do |p|
      p.round_id == self.stage_id
    end
  end
end
