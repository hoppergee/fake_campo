class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.boolean :email_verified, default: false
      t.text :bio

      t.timestamps
    end
  end
end
