class AddTrainingUrlToSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :training_url, :string
  end
end
