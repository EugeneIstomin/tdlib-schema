module TD::Types
  # The message Time To Live setting for a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_ttl [Integer] New value of message_ttl.
  class Update::ChatMessageTtl < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_ttl, TD::Types::Coercible::Integer
  end
end
