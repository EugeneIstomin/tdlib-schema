module TD::Types
  # Contains information about the message or the story a message is replying to.
  class MessageReplyTo < Base
    %w[
      Message
      Story
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MessageReplyTo/#{type}"
    end
  end
end
