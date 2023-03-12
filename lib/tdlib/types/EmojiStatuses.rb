module TD::Types
  # Contains a list of emoji statuses.
  #
  # @attr emoji_statuses [Array<TD::Types::EmojiStatus>] The list of emoji statuses.
  class EmojiStatuses < Base
    attribute :emoji_statuses, TD::Types::Array.of(TD::Types::EmojiStatus)
  end
end
