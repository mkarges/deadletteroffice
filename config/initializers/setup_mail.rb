ActionMailer::Base.smtp_settings = {  
   :address              => "smtp.gmail.com",  
   :port                 => 587,  
   :domain               => "DeadLetterOfficeHQ@gmail.com",  
   :user_name            => "DeadLetterOfficeHQ",  
   :password             => "buzzzz09",  
   :authentication       => "plain",  
   :enable_starttls_auto => true  
}  
