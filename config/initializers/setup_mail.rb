ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address                    => 'smtp.sendgrid.net',
  :port                       => '587',
  :authentication             => :plain,
  :user_name                  => 'app38146219@heroku.com',
  :password                   => 'ovrelgsr8329',
  :domain                     => 'heroku.com',
  :enable_starttls_auto       => true
}