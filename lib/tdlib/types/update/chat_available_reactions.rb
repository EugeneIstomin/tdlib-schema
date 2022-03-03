module TD::Types
  # The chat available reactions were changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr available_reactions [Array<TD::Types::String>] The new list of reactions, available in the chat.
  class Update::ChatAvailableReactions < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :available_reactions, TD::Types::Array.of(TD::Types::String)
  end
end
