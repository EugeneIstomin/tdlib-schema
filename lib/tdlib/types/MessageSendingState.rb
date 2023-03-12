module TD::Types
  # Contains information about the sending state of the message.
  class MessageSendingState < Base
    %w[
      Pending
      Failed
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/MessageSendingState/#{type}"
    end
  end
end
