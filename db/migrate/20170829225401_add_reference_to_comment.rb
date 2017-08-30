class AddReferenceToComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :tattoo, foreign_key: true
    add_reference :comments, :user, foreign_key: true
  end
end
