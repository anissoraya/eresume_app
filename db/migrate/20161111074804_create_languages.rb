class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.integer :writing_rate
      t.integer :spoken_rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
