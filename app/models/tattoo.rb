class Tattoo < ApplicationRecord
  belongs_to :artist
  has_many :comments
  has_attachment :photo
end
