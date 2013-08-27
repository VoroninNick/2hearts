class CreateTextEditors < ActiveRecord::Migration
  def change
    create_table :text_editors do |t|
      t.string :name
      t.text :descr

      t.timestamps
    end
  end
end
