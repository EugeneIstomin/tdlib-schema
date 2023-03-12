module TD::Types
  # Describes the type of an inline keyboard button.
  class InlineKeyboardButtonType < Base
    %w[
      Url
      LoginUrl
      WebApp
      Callback
      CallbackWithPassword
      CallbackGame
      SwitchInline
      Buy
      User
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/InlineKeyboardButtonType/#{type}"
    end
  end
end
