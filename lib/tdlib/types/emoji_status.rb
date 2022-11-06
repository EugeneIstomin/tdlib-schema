module TD::Types
  # Describes a custom emoji to be shown instead of the Telegram Premium badge.
  #
  # @attr custom_emoji_id [Integer] Identifier of the custom emoji in {TD::Types::StickerFormat::Tgs} format.
  #   If the custom emoji belongs to the sticker set GetOption("themed_emoji_statuses_sticker_set_id"), then it's color
  #   must be changed to the color of the Telegram Premium badge.
  class EmojiStatus < Base
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
