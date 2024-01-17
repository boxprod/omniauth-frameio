# frozen_string_literal: true

RSpec.describe Omniauth::Frameio do
  it "has a version number" do
    expect(Omniauth::Frameio::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  # it 'works' do
  #   # require 'oauth2'
  #   client = OAuth2::Client.new('client_id', 'client_secret', site: 'https://example.org')
  #   # => #<OAuth2::Client:0x00000001204c8288 @id="client_id", @secret="client_sec...
  #   client.auth_code.authorize_url(redirect_uri: 'http://localhost:8080/oauth2/callback')
  #   # => "https://example.org/oauth/authorize?client_id=client_id&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2Foauth2%2Fcallback&response_type=code"

  #   access = client.auth_code.get_token('authorization_code_value', redirect_uri: 'http://localhost:8080/oauth2/callback', headers: {'Authorization' => 'Basic some_password'})
  #   response = access.get('/api/resource', params: {'query_foo' => 'bar'})
  #   response.class.name
  #   # => OAuth2::Response
  # end
end
