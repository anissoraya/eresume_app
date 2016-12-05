class AddUsernameToAdmins < ActiveRecord::Migration[5.0]
  def self.up
    add_column :admins, :username, :string
    add_index :admins, :username, unique: true
  end

  def self.down
    remove_column :admins, :username
  end
end
