class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  # validates :last_name, uniqueness: true
  validates :last_name, uniqueness: { scope: :first_name } # the combination of the 2 columns must be unique
end
