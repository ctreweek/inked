class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  belongs_to :artist
  has_attachment :photo

  validates_presence_of :body, :conversation_id
end

