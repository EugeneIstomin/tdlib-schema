module TD::Types
  # Describes reactions available in the chat.
  class ChatAvailableReactions < Base
    %w[
      All
      Some
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatAvailableReactions/#{type}"
    end
  end
end
