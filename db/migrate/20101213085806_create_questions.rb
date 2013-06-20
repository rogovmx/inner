class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.text :qestion
      t.text :answ1
      t.text :answ2
      t.text :answ3
      t.text :answ4

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
