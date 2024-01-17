# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Frame.io strategy
    class Frameio < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, 'frameio'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.

      option :client_options, {
        site: 'https://api.frame.io/v2/',
        authorize_url: 'https://applications.frame.io/oauth2/auth',
        token_url: 'https://applications.frame.io/oauth2/token'
      }

      # option :authorize_params, {
      #   scope: 'offline'
      # }

      # def authorize_params
      #   super.tap do |params|
      #     params[:redirect_uri] = callback_url
      #   end
      # end

      def token_params
        super.tap do |params|
          params[:redirect_uri] = callback_url.split('?').first
        end
      end

      # You may specify that your strategy should use PKCE by setting
      # the pkce option to true: https://tools.ietf.org/html/rfc7636
      option :pkce, false

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('me').parsed
      end
    end
  end
end
