# book model
class Book < ApplicationRecord
  belongs_to :author
  has_many :book_genres, dependent: :destroy
  has_many :genres, through: :book_genres
  has_one_attached :cover
  validates :title, presence: true
  validate :valid_title?

  ratyrate_rateable "book_rating"

  def genres_to_csv
    genres.map(&:name).join(',')
  end

  def valid_title?
    !title.nil? && !title.strip.empty?
  end
end
