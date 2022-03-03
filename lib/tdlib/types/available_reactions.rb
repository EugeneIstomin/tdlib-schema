module TD::Types
  # Represents a list of available reactions.
  #
  # @attr reactions [Array<TD::Types::String>] List of reactions.
  class AvailableReactions < Base
    attribute :reactions, TD::Types::Array.of(TD::Types::String)
  end
end
