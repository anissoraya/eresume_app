class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.string :name
      t.string :relationship
      t.string :company
      t.string :email
      t.string :phone
      t.text :address
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
