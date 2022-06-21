module TD::Types
  # The chat available reactions were changed.
  #
  # @attr old_available_reactions [Array<TD::Types::String>] Previous chat available reactions.
  # @attr new_available_reactions [Array<TD::Types::String>] New chat available reactions.
  class ChatEventAction::AvailableReactionsChanged < ChatEventAction
    attribute :old_available_reactions, TD::Types::Array.of(TD::Types::String)
    attribute :new_available_reactions, TD::Types::Array.of(TD::Types::String)
  end
end
