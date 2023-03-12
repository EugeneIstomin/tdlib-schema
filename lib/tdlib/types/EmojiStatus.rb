module TD::Types
  # Describes a custom emoji to be shown instead of the Telegram Premium badge.
  #
  # @attr custom_emoji_id [Integer] Identifier of the custom emoji in {TD::Types::StickerFormat::Tgs} format.
  class EmojiStatus < Base
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
