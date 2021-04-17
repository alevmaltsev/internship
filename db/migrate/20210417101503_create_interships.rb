class CreateInterships < ActiveRecord::Migration[6.1]
  def change
    create_table :interships do |t|
      t.string :name, null: false
      t.text :description
      t.datetime :start_at
      t.string :duration
      t.string :busyness
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
