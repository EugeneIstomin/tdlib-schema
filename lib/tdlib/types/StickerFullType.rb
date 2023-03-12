module TD::Types
  # Contains full information about sticker type.
  class StickerFullType < Base
    %w[
      Regular
      Mask
      CustomEmoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StickerFullType/#{type}"
    end
  end
end
