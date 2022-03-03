module TD::Types
  # Describes an animated representation of an emoji.
  #
  # @attr sticker [TD::Types::Sticker] Animated sticker for the emoji.
  # @attr fitzpatrick_type [Integer] Emoji modifier fitzpatrick type; 0-6; 0 if none.
  # @attr sound [TD::Types::File, nil] File containing the sound to be played when the animated emoji is clicked if
  #   any; may be null.
  #   The sound is encoded with the Opus codec, and stored inside an OGG container.
  class AnimatedEmoji < Base
    attribute :sticker, TD::Types::Sticker
    attribute :fitzpatrick_type, TD::Types::Coercible::Integer
    attribute :sound, TD::Types::File.optional.default(nil)
  end
end
