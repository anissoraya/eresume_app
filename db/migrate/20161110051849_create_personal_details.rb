class CreatePersonalDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_details do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :phone_no
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
