class ChangeSubjectToMessageInEmails < ActiveRecord::Migration
  def self.up
    rename_column :emails, :subject, :message
  end

  def self.down
  end
end
