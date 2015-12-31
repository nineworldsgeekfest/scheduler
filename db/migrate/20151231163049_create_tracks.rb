class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :short_description
      t.text :long_description
      t.string :link_img
      t.references :conference, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
