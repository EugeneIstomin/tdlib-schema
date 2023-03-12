module TD::Types
  # Represents the categories of chats for which a list of frequently used chats can be retrieved.
  class TopChatCategory < Base
    %w[
      Users
      Bots
      Groups
      Channels
      InlineBots
      Calls
      ForwardChats
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/TopChatCategory/#{type}"
    end
  end
end
