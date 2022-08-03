class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :groups
  has_many :entities, through: :groups
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :name, presence: true
         validates :email, presence: true
         validates :password, presence: true
end
