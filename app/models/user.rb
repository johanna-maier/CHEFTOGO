class User < ApplicationRecord
  has_many :offers, dependent: :destroy
  has_many :bookings
  has_one_attached :avatar_photo
  has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :avatar_photo, presence: true
  # :description can be optional
end
