class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :description
      t.datetime :section_start
      t.datetime :section_end

      t.timestamps
    end
  end
end
