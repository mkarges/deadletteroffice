class AddSentToEmails < ActiveRecord::Migration
  def self.up
    add_column :emails, :sent, :boolean
  end

  def self.down
    remove_column :emails, :sent
  end
end
