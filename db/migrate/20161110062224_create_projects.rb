class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :company
      t.date :project_date
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
