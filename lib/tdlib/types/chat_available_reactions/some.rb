module TD::Types
  # Only specific reactions are available in the chat.
  #
  # @attr reactions [Array<TD::Types::ReactionType>] The list of reactions.
  class ChatAvailableReactions::Some < ChatAvailableReactions
    attribute :reactions, TD::Types::Array.of(TD::Types::ReactionType)
  end
end
