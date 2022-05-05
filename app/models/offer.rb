class Offer < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :description, :category ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  has_many :bookings
  # has_one_attached :photo
  has_many_attached :photos


  CATEGORY = ['German', 'Italian', 'Vietnamese', 'Vegan', 'French', 'Indian', 'Fusion', 'American', 'Japanese'].freeze

  # An offer must have a unique title and a description
  validates :title, uniqueness: true, presence: true
  validates :description, presence: true

  validates :price, numericality: true, presence: true
  validates :number_of_people, numericality: { only_integer: true }, presence: true
  validates :category, inclusion: { in: CATEGORY }, presence: true


end
