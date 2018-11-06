class Artist < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { minimum: 1, maximum: 100 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
end