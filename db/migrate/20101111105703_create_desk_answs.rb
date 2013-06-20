class CreateDeskAnsws < ActiveRecord::Migration
  def self.up
    create_table :desk_answs do |t|
      t.integer :desk_subj_id
      t.text :a_text
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :desk_answs
  end
end
