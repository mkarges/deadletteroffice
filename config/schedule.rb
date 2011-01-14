set :output, "/home/ub/rails/mail/config/cron.log"

every 2.minutes do
   rake "cron", :environment => :development
end

# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
