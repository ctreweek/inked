class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_many :messages, dependent: :destroy
  validates_uniqueness_of :user_id, :scope => :artist_id
  validates_uniqueness_of :artist_id, :scope => :user_id

  scope :between, ->(artist_id, user_id) {
    where ('(conversations.artist_id = artist_id AND conversations.user_id = user_id) OR
    (conversations.user_id = user_id AND conversations.artist_id = artist_id)')
  }
end
