class AddCompanyNameToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :company_name, :string
  end
end
