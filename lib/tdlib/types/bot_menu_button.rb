module TD::Types
  # Describes a button to be shown instead of bot commands menu button.
  #
  # @attr text [TD::Types::String] Text of the button.
  # @attr url [TD::Types::String] URL to be passed to openWebApp.
  class BotMenuButton < Base
    attribute :text, TD::Types::String
    attribute :url, TD::Types::String
  end
end
