class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.string :name
      t.string :flag_type

      t.timestamps null: false
    end
  end
end
