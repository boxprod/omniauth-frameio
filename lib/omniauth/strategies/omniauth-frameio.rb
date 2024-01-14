require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Frameio < OmniAuth::Strategies::OAuth2
      option :name, 'frameio'

      option :client_options, {
        site: 'https://api.frame.io', # Update with Frame.io's actual API endpoint
        authorize_url: 'https://applications.frame.io/oauth2/auth',
        token_url: 'https://applications.frame.io/oauth2/token'
      }

      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email'],
          # Add other fields that you want to retrieve
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/v1/users/me').parsed
      end
    end
  end
end
