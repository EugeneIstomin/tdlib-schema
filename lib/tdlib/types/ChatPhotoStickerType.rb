module TD::Types
  # Describes type of a sticker, which was used to create a chat photo.
  class ChatPhotoStickerType < Base
    %w[
      RegularOrMask
      CustomEmoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatPhotoStickerType/#{type}"
    end
  end
end
