class Restaurant < ApplicationRecord
  validates :address, presence: true
  validates :hours, presence: true
  validates :name, presence: true
  validates :phone, presence: true

  attachment :menu

  has_many :pictures
end
