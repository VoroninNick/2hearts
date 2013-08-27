class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :full_name
      t.text :short_descr
      t.string :position
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
  end
end
