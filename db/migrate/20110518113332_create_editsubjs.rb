class CreateEditsubjs < ActiveRecord::Migration
  def self.up
    create_table :editsubjs do |t|
      t.string :subj
      t.text :s_text
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :editsubjs
  end
end
