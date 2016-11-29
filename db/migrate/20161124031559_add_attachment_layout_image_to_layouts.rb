class AddAttachmentLayoutImageToLayouts < ActiveRecord::Migration
  def self.up
    change_table :layouts do |t|
      t.attachment :layout_image
    end
  end

  def self.down
    remove_attachment :layouts, :layout_image
  end
end
