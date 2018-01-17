class Participate < ApplicationRecord
  belongs_to :member

  has_many :activities

  
end
