module TD::Types
  # Contains information about the sender of a message.
  class MessageSender < Base
    %w[
      User
      Chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MessageSender/#{type}"
    end
  end
end
