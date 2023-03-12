module TD::Types
  # The link is a link to a Web App.
  # Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the
  #   received bot and the given web_app_short_name.
  # Process received foundWebApp by showing a confirmation dialog if needed, then calling getWebAppLinkUrl and opening
  #   the returned URL.
  #
  # @attr bot_username [TD::Types::String] Username of the bot that owns the Web App.
  # @attr web_app_short_name [TD::Types::String] Short name of the Web App.
  # @attr start_parameter [TD::Types::String] Start parameter to be passed to getWebAppLinkUrl.
  class InternalLinkType::WebApp < InternalLinkType
    attribute :bot_username, TD::Types::String
    attribute :web_app_short_name, TD::Types::String
    attribute :start_parameter, TD::Types::String
  end
end
