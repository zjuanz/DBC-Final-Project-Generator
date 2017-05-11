class Cohort < ApplicationRecord
  has_many :students

	validates :name, presence: true
	validates_uniqueness_of :name
	validates :pitch_limit, presence: true
	validates :vote_limit, presence: true
	validates :pitch_start, presence: true
	validates :vote_start, presence: true
	validates :vote_end, presence: true


  def self.active
    Cohort.all.select do |c|
      c.active == true
    end
  end
end
