class Device < ApplicationRecord
  has_many :user_devices
  has_many :users, through: :user_devices

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
