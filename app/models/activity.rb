class Activity < ApplicationRecord
  belongs_to :member

  belongs_to :participate

  has_many :participate_logs, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
  validates :title, presence: true
end
