class Member < ApplicationRecord
#   has_many :products
  has_many :orders
  has_many :products, through: :orders

  #   has_many :product
  has_many :collections
  has_many :product, through: :collections



#   has_many :activity
  has_many :participates
  has_many :activity, through: :participates

  has_many :activities
end
