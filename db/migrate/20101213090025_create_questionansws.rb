class CreateQuestionansws < ActiveRecord::Migration
  def self.up
    create_table :questionansws do |t|

      t.timestamps
      t.integer :user_id
      t.integer :user_answ
      t.integer :q_id
    end
  end

  def self.down
    drop_table :questionansws
  end
end
