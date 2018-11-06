class CreateLongPlays < ActiveRecord::Migration
  def change
    create_table :long_plays do |t|
      t.string :name
      t.text :description
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
