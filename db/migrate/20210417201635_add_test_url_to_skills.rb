class AddTestUrlToSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :test_url, :string
  end
end
