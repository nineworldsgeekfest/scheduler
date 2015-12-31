class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.date :start_date
      t.time :start_time
      t.string :title
      t.string :subtitle
      t.string :activity_type
      t.string :short_description
      t.text :long_description
      t.string :loc
      t.integer :mins
      t.references :flag, index: true, foreign_key: true
      t.references :track, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.references :conference, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
