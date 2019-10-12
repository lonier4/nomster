class Place < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :comments, dependent: :destroy
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: {in: 3..100}
  validates :address, presence: true, length: {in: 6..100}
  validates :description, presence: true

end
