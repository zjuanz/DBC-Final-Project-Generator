class Student < ApplicationRecord
  belongs_to :cohort
  has_many :pitches
  has_many :votes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
