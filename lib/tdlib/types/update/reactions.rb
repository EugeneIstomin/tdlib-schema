module TD::Types
  # The list of supported reactions has changed.
  #
  # @attr reactions [Array<TD::Types::Reaction>] The new list of supported reactions.
  class Update::Reactions < Update
    attribute :reactions, TD::Types::Array.of(TD::Types::Reaction)
  end
end
