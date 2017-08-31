class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachments :photos, maximum: 3
  has_many :bookings
  has_many :tattoos
  has_many :comments
  has_many :reviews
  has_many :conversations
  has_many :messages
end
