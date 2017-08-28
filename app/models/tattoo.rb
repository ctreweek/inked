class Tattoo < ApplicationRecord
  belongs_to :artist
  has_attachment :photo
end
