module TD::Types
  # Describes a media, which is attached to an invoice.
  class MessageExtendedMedia < Base
    %w[
      preview
      photo
      video
      unsupported
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_extended_media/#{type}"
    end
  end
end
