class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :bio
      t.string :link_bio
      t.string :link_img
      t.string :full_name
      t.string :prefix
      t.string :forename
      t.string :surname

      t.timestamps null: false
    end
  end
end
