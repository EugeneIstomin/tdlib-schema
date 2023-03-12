module TD::Types
  # Describes format of a sticker.
  class StickerFormat < Base
    %w[
      Webp
      Tgs
      Webm
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/StickerFormat/#{type}"
    end
  end
end
