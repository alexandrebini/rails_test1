class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :developer
      t.string :slug

      t.attachment :thumb
      t.attachment :source

      t.timestamps
    end
  end

  def down
    drop_table :games
  end
end