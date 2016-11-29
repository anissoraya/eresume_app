class RemoveTitleFromUserLayouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_layouts, :title, :string
  end
end
