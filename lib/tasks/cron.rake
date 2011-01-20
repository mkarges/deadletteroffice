desc "This task is called by the Heroku cron add-on"
task :cron => :environment do
  Rails.logger.info "CHECKING TO SEE IF EMAILS NEED TO BE SENT OUT... #{Time.now}"
  unsent = Email.where("date = ?", Chronic.parse(Date.today)).where(:sent => nil)  #query db for unsent messages & today's date
  unsent.each do |post|                                    
    Emailer.send_email(post).deliver
    post[:sent] = true                                       
    post.save                                                              
  end
end



