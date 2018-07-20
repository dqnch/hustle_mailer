class DummyMailer < ApplicationMailer
  def welcome
    mail(to: 'det@ra.me', subject: 'Welcome to DummyMailer')
  end
end
