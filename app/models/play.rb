class Play < ApplicationRecord
  has_many :productions
  validates :title, :playwright, :year_of_release, :male_roles, :female_roles, :total_roles, presence: true 
end
