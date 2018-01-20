class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.datetime :intin_start
      t.datetime :intin_end
      t.integer :creator_id

      t.timestamps
    end
  end
end
