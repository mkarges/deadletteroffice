#desc "This task is called by the Heroku cron add-on"
task :cron => :environment do
  unsent = Email.where(:sent => nil, :date => Date.today)  #query db for unsent messages & check to see if any dates match today 
  unsent.each do |post|                                    #if yes, send email to each
    Emailer.send_email(post).deliver
    post[:sent] = true                                     #toggle boolean sent field  
    post.save                                                              
  end
end

