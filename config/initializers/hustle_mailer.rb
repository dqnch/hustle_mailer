unless Rails.env.production?
  ActionMailer::Base.register_interceptor(SubjectInterceptor)
end

module HustleMailer
  class SubjectInterceptor
    def self.delivering_email(message)
      message.subject.isert(0, "[#{Rails.env}] ")
    end
  end
end
