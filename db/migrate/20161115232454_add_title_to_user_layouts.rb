class AddTitleToUserLayouts < ActiveRecord::Migration[5.0]
  def up
    add_column :user_layouts, :title, :string
  end
  def down
    remove_column :user_layouts, :title, :string
  end
end
