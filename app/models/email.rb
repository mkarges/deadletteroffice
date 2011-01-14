class Email < ActiveRecord::Base
  validates :name, :presence => true
  validates :email, :presence => true, :length => { :maximum => 5000 }
  validates :message, :presence => true, :length => { :maximum => 125 }
  validates :date, :presence => true, :length => { :minimum => 10, :maximum => 10 }

end




