class FixIncorrectJoinArities < ActiveRecord::Migration
  def change
    remove_foreign_key :programs, :flags
    remove_foreign_key :programs, :people
    remove_foreign_key :programs, :tracks
    remove_column :programs, :flag_id
    remove_column :programs, :track_id
    remove_column :programs, :person_id
    create_join_table :programs, :flags
    create_join_table :programs, :tracks
    create_join_table :programs, :people
  end
end
