#temp rack app for deadletteroffice

run Proc.new { |env| [200, {"Content-Type" => "text/html"}, ["Welcome to the DeadLetterOffice - coming soon (but not <em>too</em> soon)!"] ]}

