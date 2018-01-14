class Activity < ApplicationRecord
  has_many :participates
  has_many :member, through: :participates

  belongs_to :member
  
end
