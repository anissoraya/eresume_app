class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :major
      t.string :school
      t.string :status
      t.text :location
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
