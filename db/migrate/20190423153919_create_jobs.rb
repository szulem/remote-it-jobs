class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :email
      t.string :url
      t.integer :salary_from
      t.integer :salary_to
      t.string :salary_per
      t.string :currency

      t.timestamps
    end
  end
end
