class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.index ["username"], name: "index_users_on_username", unique: true

      t.timestamps
    end
  end
end
