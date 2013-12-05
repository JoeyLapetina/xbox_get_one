class UserMailer < ActionMailer::Base
  default from: "TheWildScrape@gmail.com"
  
  def xbox_is_at(user, checker, time)
    @user = user
    @checker = checker
    @time = time
    mail(:to => "#{user.name} <#{user.email}>", subject: "There may be an xbox at #{checker.name}: #{@time}")
  end

  def xbox_out_at(user, checker, time)
    @user = user
    @checker = checker
    @time = time
    mail(:to => "#{user.name} <#{user.email}>", subject: "Xboxes are gone from #{checker.name}: #{@time}")
  end
end
