module TD::Types
  # Represents result of checking whether a name can be used for a new sticker set.
  class CheckStickerSetNameResult < Base
    %w[
      Ok
      NameInvalid
      NameOccupied
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/CheckStickerSetNameResult/#{type}"
    end
  end
end
