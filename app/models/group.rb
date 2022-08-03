# Service to download ftp file from the server
class Group < ApplicationRecord
  has_one_attached :icon
  belongs_to :user
  has_many :entities

  validates :name, presence: true
  validates :icon, presence: true
end
