module TD::Types
  # Describes a list of chats.
  class ChatList < Base
    %w[
      Main
      Archive
      Filter
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatList/#{type}"
    end
  end
end
