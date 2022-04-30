class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  CATEGORY = ['German', 'Italian', 'Vietnamese', 'Vegan', 'French', 'Indian', 'Fusion', 'American', 'Japanese'].freeze

  # An offer must have a unique title and a description
  validates :title, uniqueness: true, presence: true
  validates :description, presence: true

  validates :price, numericality: true, presence: true
  validates :number_of_people, numericality: { only_integer: true }, presence: true
  validates :category, inclusion: { in: CATEGORY }, presence: true
end
