class Product < ApplicationRecord
#   belongs_to :member
  has_many :orders
  has_many :members, through: :orders
  
#   belongs_to :member
  has_many :collections
  has_many :member, through: :collections
end
