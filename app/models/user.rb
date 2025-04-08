class User < ApplicationRecord
  has_many :user_devices, dependent: :destroy
  has_many :devices, through: :user_devices

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_one_attached :header_image

  validates :name, presence: true
end
