class AddAttachmentCompanyLogoToJobs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :jobs do |t|
      t.attachment :company_logo
    end
  end

  def self.down
    remove_attachment :jobs, :company_logo
  end
end
