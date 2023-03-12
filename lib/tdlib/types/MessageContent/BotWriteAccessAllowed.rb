module TD::Types
  # The user allowed the bot to send messages.
  #
  # @attr web_app [TD::Types::WebApp, nil] Information about the Web App, which requested the access; may be null if
  #   none or the Web App was opened from the attachment menu.
  class MessageContent::BotWriteAccessAllowed < MessageContent
    attribute :web_app, TD::Types::WebApp.optional.default(nil)
  end
end
