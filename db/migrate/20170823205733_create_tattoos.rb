class CreateTattoos < ActiveRecord::Migration[5.0]
  def change
    create_table :tattoos do |t|
      t.string :url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
