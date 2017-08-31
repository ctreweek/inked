class AddFieldsToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :content, :string
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :artist, foreign_key: true
  end
end
