class LongPlay < ActiveRecord::Base
  belongs_to :artist
  validates :artist, presence: true
  validates :name, presence: true, length: { minimum: 1, maximum: 100 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }

  scope :get_by_artist_name, -> (term) { 
    LongPlay.all.joins(:artist).where('artists.name LIKE ?', "%#{term}%")
  }
end
