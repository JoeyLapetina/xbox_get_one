class UserMailer < ActionMailer::Base
  default from: "TheWildScrape@gmail.com"
  
  def xbox_is_at(user, checker)
    @user = user
    @checker = checker
    mail(:to => "#{user.name} <#{user.email}>", subject: "There may be an xbox at #{checker.name}")
  end

  def xbox_out_at(user, checker)
    @user = user
    @checker = checker
    mail(:to => "#{user.name} <#{user.email}>", subject: "Xboxes are gone from #{checker.name}")
  end
end
