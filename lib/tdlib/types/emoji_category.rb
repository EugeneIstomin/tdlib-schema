module TD::Types
  # Contains a list of similar emoji to search for in getStickers and searchStickers.
  #
  # @attr name [TD::Types::String] Name of the category.
  # @attr icon [TD::Types::Sticker] Custom emoji sticker, which represents icon of the category.
  # @attr emojis [Array<TD::Types::String>] List of emojis in the category.
  class EmojiCategory < Base
    attribute :name, TD::Types::String
    attribute :icon, TD::Types::Sticker
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
