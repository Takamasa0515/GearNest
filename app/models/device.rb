class Device < ApplicationRecord
  has_many :user_devices, dependent: :destroy
  has_many :users, through: :user_devices
  has_one_attached :image

  validates :name, presence: true
  validates :category, presence: true
  validates :maker, presence: true

  enum category: {
    mouse: "Mouse",
    keyboard: "Keyboard",
    mousepad: "Mousepad",
    controller: "Controller",
    monitor: "Monitor",
    headset: "Headset",
    earphone: "Earphone",
    mic: "Mic",
    chair: "Chair",
    desk: "Desk",
    other: "Other",
  }
end
