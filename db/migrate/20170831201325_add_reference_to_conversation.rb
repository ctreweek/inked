class AddReferenceToConversation < ActiveRecord::Migration[5.0]
  def change
    add_reference :conversations, :artist, foreign_key: true
    add_reference :conversations, :user, foreign_key: true
    remove_column :conversations, :sender_id
    remove_column :conversations, :recipient_id
  end
end
