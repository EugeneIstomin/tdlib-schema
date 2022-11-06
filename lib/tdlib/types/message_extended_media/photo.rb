module TD::Types
  # The media is a photo.
  #
  # @attr photo [TD::Types::Photo] The photo.
  # @attr caption [TD::Types::FormattedText] Photo caption.
  class MessageExtendedMedia::Photo < MessageExtendedMedia
    attribute :photo, TD::Types::Photo
    attribute :caption, TD::Types::FormattedText
  end
end
