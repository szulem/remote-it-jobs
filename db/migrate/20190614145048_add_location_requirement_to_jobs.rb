class AddLocationRequirementToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :location_requirement, :string
  end
end
