class CreateDeskSubjs < ActiveRecord::Migration
  def self.up
    create_table :desk_subjs do |t|
      t.text :subj
      t.text :s_text
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :desk_subjs
  end
end
