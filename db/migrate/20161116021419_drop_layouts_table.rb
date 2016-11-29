class DropLayoutsTable < ActiveRecord::Migration[5.0]
  def up
     drop_table :layouts
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
