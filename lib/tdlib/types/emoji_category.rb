module TD::Types
  # Contains a list of similar emoji to search for in getStickers and searchStickers.
  #
  # @attr name [TD::Types::String] Name of the category.
  # @attr icon_custom_emoji_id [Integer] Unique identifier of the custom emoji, which represents icon of the category.
  # @attr emojis [Array<TD::Types::String>] List of emojis in the category.
  class EmojiCategory < Base
    attribute :name, TD::Types::String
    attribute :icon_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
