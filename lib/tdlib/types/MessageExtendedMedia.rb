module TD::Types
  # Describes a media, which is attached to an invoice.
  class MessageExtendedMedia < Base
    %w[
      Preview
      Photo
      Video
      Unsupported
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/MessageExtendedMedia/#{type}"
    end
  end
end
