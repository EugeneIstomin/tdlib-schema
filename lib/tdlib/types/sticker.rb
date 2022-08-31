module TD::Types
  # Describes a sticker.
  #
  # @attr set_id [Integer] The identifier of the sticker set to which the sticker belongs; 0 if none.
  # @attr width [Integer] Sticker width; as defined by the sender.
  # @attr height [Integer] Sticker height; as defined by the sender.
  # @attr emoji [TD::Types::String] Emoji corresponding to the sticker.
  # @attr format [TD::Types::StickerFormat] Sticker format.
  # @attr type [TD::Types::StickerType] Sticker type.
  # @attr mask_position [TD::Types::MaskPosition, nil] Position where the mask is placed; may be null even the sticker
  #   is a mask.
  # @attr custom_emoji_id [Integer] Identifier of the emoji if the sticker is a custom emoji.
  # @attr outline [Array<TD::Types::ClosedVectorPath>, nil] Sticker's outline represented as a list of closed vector
  #   paths; may be empty.
  #   The coordinate system origin is in the upper-left corner.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Sticker thumbnail in WEBP or JPEG format; may be null.
  # @attr is_premium [Boolean] True, if only Premium users can use the sticker.
  # @attr premium_animation [TD::Types::File, nil] Premium animation of the sticker; may be null.
  # @attr sticker [TD::Types::File] File containing the sticker.
  class Sticker < Base
    attribute :set_id, TD::Types::Coercible::Integer
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :emoji, TD::Types::String
    attribute :format, TD::Types::StickerFormat
    attribute :type, TD::Types::StickerType
    attribute :mask_position, TD::Types::MaskPosition.optional.default(nil)
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
    attribute :outline, TD::Types::Array.of(TD::Types::ClosedVectorPath).optional.default(nil)
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
    attribute :is_premium, TD::Types::Bool
    attribute :premium_animation, TD::Types::File.optional.default(nil)
    attribute :sticker, TD::Types::File
  end
end
