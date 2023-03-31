module TD::Types
  # The media is unsupported.
  #
  # @attr caption [TD::Types::FormattedText] Media caption.
  class MessageExtendedMedia::Unsupported < MessageExtendedMedia
    attribute :caption, TD::Types::FormattedText
  end
end
