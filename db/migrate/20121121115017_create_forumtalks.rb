class CreateForumtalks < ActiveRecord::Migration
  def self.up
    create_table :forumtalks do |t|
      t.string :title
      t.text :content
      t.boolean :vis

      t.timestamps
    end
  end

  def self.down
    drop_table :forumtalks
  end
end
