require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Frameio do
  subject { OmniAuth::Strategies::Frameio.new({}) }

  context 'client options' do
    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://api.frame.io')
    end

    it 'should have correct authorize URL' do
      expect(subject.options.client_options.authorize_url).to eq('https://applications.frame.io/oauth2/auth')
    end

    it 'should have correct token URL' do
      expect(subject.options.client_options.token_url).to eq('https://applications.frame.io/oauth2/token')
    end
  end
end
