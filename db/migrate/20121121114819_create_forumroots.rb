class CreateForumroots < ActiveRecord::Migration
  def self.up
    create_table :forumroots do |t|
      t.string :title
      t.boolean :vis

      t.timestamps
    end
  end

  def self.down
    drop_table :forumroots
  end
end
