class Notifier < ActionMailer::Base
  default from: "makersquarelessons@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user, project)
    @user = user
    @project = project
    @greeting = "hi there"

    mail( to: "#{user.name} <#{user.email}>", subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  def unsubscription_confirmation(user, project)
    @user = user
    @project = project
    @greeting = "check you later!"

    mail( to: "#{user.name} <#{user.email}>", subject: "unsubscribed to #{project.name.capitalize} | Ativa")
  end

  def subscription_update(users, project)
    @users = users
    @project = project
    @greeting = "update!"

    @users.each do |user|
      mail( to: "#{user.name} <#{user.email}>", subject: "update to #{project.name.capitalize} | Ativa")
    end
  end
end
