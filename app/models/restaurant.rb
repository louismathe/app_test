class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader

  belongs_to :user
end
