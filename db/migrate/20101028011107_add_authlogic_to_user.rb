class AddAuthlogicToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :login, :string, :null => false
    add_column :users, :password_salt, :string, :null => false
    add_column :users, :persistence_token, :string, :null => false
    add_column :users, :perishable_token, :string, :null => false

    # Magic columns, just like ActiveRecord's created_at and updated_at. These are automatically maintained by Authlogic if they are present.
    add_column :users, :login_count, :integer, :null => false, :default => 0
    add_column :users, :failed_login_count, :integer, :null => false, :default => 0
    add_column :users, :last_request_at, :datetime
    add_column :users, :current_login_at, :datetime
    add_column :users, :last_login_at, :datetime
    
    add_index :users, :login
    add_index :users, :login_count
    add_index :users, :last_request_at
    add_index :users, :last_login_at
  end

  def self.down
    remove_index :users, :login
    remove_index :users, :login_count
    remove_index :users, :last_request_at
    remove_index :users, :last_login_at
    
    remove_column :users, :login
    remove_column :users, :password_salt
    remove_column :users, :persistence_token
    remove_column :users, :perishable_token

    remove_column :users, :login_count
    remove_column :users, :failed_login_count
    remove_column :users, :last_request_at
    remove_column :users, :current_login_at
    remove_column :users, :last_login_at
  end
end
