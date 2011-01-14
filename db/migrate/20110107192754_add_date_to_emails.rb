class AddDateToEmails < ActiveRecord::Migration
  def self.up
    add_column :emails, :date, :date
  end

  def self.down
    remove_column :emails, :date
  end
end
