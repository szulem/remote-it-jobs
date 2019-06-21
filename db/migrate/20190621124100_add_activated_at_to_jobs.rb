class AddActivatedAtToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :activated_at, :datetime
  end
end
