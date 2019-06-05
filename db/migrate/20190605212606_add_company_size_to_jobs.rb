class AddCompanySizeToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :company_size, :string
  end
end
