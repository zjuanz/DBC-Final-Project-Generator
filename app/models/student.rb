class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  # :recoverable, :rememberable,
  devise :database_authenticatable, :validatable

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
