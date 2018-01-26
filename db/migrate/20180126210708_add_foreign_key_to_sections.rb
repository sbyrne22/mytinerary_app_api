class AddForeignKeyToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :itinerary_id, :integer
  end
end
