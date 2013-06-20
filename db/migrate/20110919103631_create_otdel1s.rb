class CreateOtdel1s < ActiveRecord::Migration
  def self.up
    create_table :otdel1s do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :otdel1s
  end
end
