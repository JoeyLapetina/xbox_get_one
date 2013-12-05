ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "wildscrape.com",
  :user_name            => "theWildScrape",
  :password             => "4312walk",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "xbox-get-one.dev/"



if false
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.mandrillapp.com",
  :port                 => 587,
  :domain               => "heroku.com",
  :user_name            => ENV['MANDRILL_USERNAME'],
  :password             => ENV['MANDRILL_APIKEY'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "scouting.io"
end