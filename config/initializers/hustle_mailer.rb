module HustleMailer
  class PrefixSubjectInterceptor
    def self.delivering_email(message)
      message.subject.insert(0, "[#{Rails.env}] ")
    end
  end
end

unless Rails.env.production?
  ActionMailer::Base.register_interceptor(HustleMailer::PrefixSubjectInterceptor)
end
