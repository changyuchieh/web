class Activity < ApplicationRecord
  belongs_to :member
  
  
  has_many :participates
  has_many :member, through: :participates
end
