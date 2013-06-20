class AddHashSaltToOffice1s < ActiveRecord::Migration
  def self.up
    add_column :office1s, :login, :string
    add_column :office1s, :hashed_password, :string
    add_column :office1s, :salt, :string
  end

  def self.down
    remove_column :office1s, :login, :string
    remove_column :office1s, :hashed_password, :string
    remove_column :office1s, :salt, :string
  end
end
