class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_many :messages, dependent: :destroy
  validates_uniqueness_of :user_id, :scope => :artist_id
  validates_uniqueness_of :artist_id, :scope => :user_id


end
