module TD::Types
  # A photo message.
  #
  # @attr photo [TD::Types::InputFile] Photo to send.
  #   The photo must be at most 10 MB in size.
  #   The photo's width and height must not exceed 10000 in total.
  #   Width and height ratio must be at most 20.
  # @attr thumbnail [TD::Types::InputThumbnail] Photo thumbnail to be sent; pass null to skip thumbnail uploading.
  #   The thumbnail is sent to the other party only in secret chats.
  # @attr added_sticker_file_ids [Array<Integer>] File identifiers of the stickers added to the photo, if applicable.
  # @attr width [Integer] Photo width.
  # @attr height [Integer] Photo height.
  # @attr caption [TD::Types::FormattedText] Photo caption; pass null to use an empty caption;
  #   0-getOption("message_caption_length_max") characters.
  # @attr self_destruct_time [Integer] Photo self-destruct time, in seconds (0-60).
  #   A non-zero self-destruct time can be specified only in private chats.
  # @attr has_spoiler [Boolean] True, if the photo preview must be covered by a spoiler animation; not supported in
  #   secret chats.
  class InputMessageContent::Photo < InputMessageContent
    attribute :photo, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail
    attribute :added_sticker_file_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :caption, TD::Types::FormattedText
    attribute :self_destruct_time, TD::Types::Coercible::Integer
    attribute :has_spoiler, TD::Types::Bool
  end
end
