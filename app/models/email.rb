class Email < ActiveRecord::Base
  validates :name, :presence => true
  validates :email, :presence => true, :length => { :maximum => 5000 }
  validates :message, :presence => true, :length => { :maximum => 125 }
  validates :date, :presence => true
 
  def set_date
    date.to_s
  end
 
  def set_date=(string)
    self.date = Chronic.parse(string)
  end
  
end




