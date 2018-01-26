class AddForeignKeyToItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :user_id, :integer
  end
end
