class AddPromoToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :promo, :boolean, default: false
  end
end
