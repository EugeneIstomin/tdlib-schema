module TD::Types
  # The message TTL was changed.
  #
  # @attr old_message_ttl [Integer] Previous value of message_ttl.
  # @attr new_message_ttl [Integer] New value of message_ttl.
  class ChatEventAction::MessageTtlChanged < ChatEventAction
    attribute :old_message_ttl, TD::Types::Coercible::Integer
    attribute :new_message_ttl, TD::Types::Coercible::Integer
  end
end
