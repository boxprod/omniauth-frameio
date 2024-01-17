# Omniauth::Frameio

This gem only extends [omniauth-oauth2](https://github.com/omniauth/omniauth-oauth2) gem by providing specific links to Frame.io auth urls.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add omniauth-frameio

Or add the gem to your Gemfile:

    gem 'omniauth-frameio'

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install omniauth-frameio

## Usage

This Strategy is meant to be used with [Omniauth](https://github.com/omniauth/omniauth) and has been tested and used with [Devise](https://github.com/heartcombo/devise#omniauth)

If using Devise, add this in your Devise.setup in /config/initializers/devise.rb

    config.omniauth   :frameio,
                      ENV['FRAME_CLIENT_ID'], # Your app client ID (on Frame.io Oauth app mgmt)
                      ENV['FRAME_CLIENT_SECRET'], # Your app client Secret (on Frame.io Oauth app mgmt)
                      scope: 'offline' # list of availables scopes to find on Frame.io dev doc

Please follow Omniauth & Devise instructions for complete configuration.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/boxprod/omniauth-frameio. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/boxprod/omniauth-frameio/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Omniauth::Frameio project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/boxprod/omniauth-frameio/blob/main/CODE_OF_CONDUCT.md).
