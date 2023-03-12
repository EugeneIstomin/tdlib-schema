module TD::Types
  # Contains a detailed statistics about a chat.
  class ChatStatistics < Base
    %w[
      Supergroup
      Channel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatStatistics/#{type}"
    end
  end
end
