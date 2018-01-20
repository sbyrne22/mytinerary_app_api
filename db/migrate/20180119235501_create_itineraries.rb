class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.string :month
      t.string :day
      t.string :year

      t.timestamps
    end
  end
end
