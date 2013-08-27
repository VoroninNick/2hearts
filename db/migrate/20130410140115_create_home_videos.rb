class CreateHomeVideos < ActiveRecord::Migration
  def change
    create_table :home_videos do |t|
      t.string :name
      t.string :descr
      t.boolean :youtube
      t.boolean :vimeo
      t.integer :video_id

      t.timestamps
    end
  end
end
