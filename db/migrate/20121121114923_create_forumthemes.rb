class CreateForumthemes < ActiveRecord::Migration
  def self.up
    create_table :forumthemes do |t|
      t.string :title
      t.boolean :vis

      t.timestamps
    end
  end

  def self.down
    drop_table :forumthemes
  end
end
