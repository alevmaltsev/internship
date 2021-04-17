class CreateStudentSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :student_skills do |t|
      t.references :student, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.integer :rating

      t.timestamps

      t.index [:student_id, :skill_id], unique: true
    end
  end
end
