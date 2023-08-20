module TD::Types
  # Represents a list of stories.
  #
  # @attr total_count [Integer] Approximate total number of stories found.
  # @attr stories [Array<TD::Types::Story>] The list of stories.
  class Stories < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :stories, TD::Types::Array.of(TD::Types::Story)
  end
end
