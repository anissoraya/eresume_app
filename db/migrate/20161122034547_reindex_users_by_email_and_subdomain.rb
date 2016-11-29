class ReindexUsersByEmailAndSubdomain < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :subdomain, :string
    add_index :users, [:email,:subdomain], unique: true
  end
end
