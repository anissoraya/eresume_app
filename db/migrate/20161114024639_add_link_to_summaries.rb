class AddLinkToSummaries < ActiveRecord::Migration[5.0]
  def change
    add_column :summaries, :link, :string
  end
end
