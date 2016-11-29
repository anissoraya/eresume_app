class CreateEmploymentHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :employment_histories do |t|
      t.string :job_title
      t.string :company
      t.text :location
      t.boolean :presently_emp
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
