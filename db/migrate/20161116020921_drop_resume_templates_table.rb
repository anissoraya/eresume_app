class DropResumeTemplatesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :resume_templates
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
