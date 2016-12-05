class CreateLayouts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :layouts do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
     drop_table :layouts
  end
end
