module TD::Types
  # The media is a video.
  #
  # @attr video [TD::Types::Video] The video.
  # @attr caption [TD::Types::FormattedText] Photo caption.
  class MessageExtendedMedia::Video < MessageExtendedMedia
    attribute :video, TD::Types::Video
    attribute :caption, TD::Types::FormattedText
  end
end
