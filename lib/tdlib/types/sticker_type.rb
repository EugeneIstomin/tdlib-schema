module TD::Types
  # Describes type of a sticker.
  class StickerType < Base
    %w[
      static
      animated
      video
      mask
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/sticker_type/#{type}"
    end
  end
end
