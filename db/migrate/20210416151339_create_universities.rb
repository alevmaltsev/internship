class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :name, null: false
      t.text :description
      t.string :email, null: false
      t.string :password_digest

      t.timestamps

      t.index :email, unique: true
    end
  end
end
