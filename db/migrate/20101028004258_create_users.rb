class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.timestamps
    end
    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :email_address
  end

  def self.down
    remove_index :users, :first_name
    remove_index :users, :last_name
    remove_index :users, :email_address
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :email_address
    drop_table :users
  end
end
