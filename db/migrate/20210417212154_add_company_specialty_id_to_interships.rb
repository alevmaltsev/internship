class AddCompanySpecialtyIdToInterships < ActiveRecord::Migration[6.1]
  def change
    add_reference :interships, :company_specialty
  end
end
