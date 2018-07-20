require 'rails_helper'

RSpec.describe DummyMailer, type: :mailer do
  describe 'Interceptors' do
    let(:mail) { DummyMailer.welcome }
    before { described_class.delivering_email(mail) }

    describe HustleMailer::PrefixSubjectInterceptor do
      it 'prefixes by Rails.env' do
        expect(mail.subject).to eq '[test] Welcome to DummyMailer'
      end
    end
  end
end
