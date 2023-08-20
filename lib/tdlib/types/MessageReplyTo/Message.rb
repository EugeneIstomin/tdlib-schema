module TD::Types
  # Describes a replied message.
  #
  # @attr chat_id [Integer] The identifier of the chat to which the replied message belongs; ignored for outgoing
  #   replies.
  #   For example, messages in the Replies chat are replies to messages in different chats.
  # @attr message_id [Integer] The identifier of the replied message.
  class MessageReplyTo::Message < MessageReplyTo
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
