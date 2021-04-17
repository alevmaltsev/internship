class CreateCompanySpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :company_specialties do |t|
      t.string :name, null: false
      t.text :description
      t.references :company, null: false, foreign_key: true

      t.timestamps

      t.index :name, unique: true
    end
  end
end
