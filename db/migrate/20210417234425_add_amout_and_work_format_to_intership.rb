class AddAmoutAndWorkFormatToIntership < ActiveRecord::Migration[6.1]
  def change
    add_column :interships, :student_amount, :integer
    add_column :interships, :work_format, :string
    add_column :interships, :payment, :string
  end
end
