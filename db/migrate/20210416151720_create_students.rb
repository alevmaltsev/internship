class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name
      t.string :email, null: false
      t.string :password_digest
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
