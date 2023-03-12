module TD::Types
  # Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
  class ReplyMarkup < Base
    %w[
      RemoveKeyboard
      ForceReply
      ShowKeyboard
      InlineKeyboard
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ReplyMarkup/#{type}"
    end
  end
end
