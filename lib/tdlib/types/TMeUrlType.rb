module TD::Types
  # Describes the type of a URL linking to an internal Telegram entity.
  class TMeUrlType < Base
    %w[
      User
      Supergroup
      ChatInvite
      StickerSet
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/TMeUrlType/#{type}"
    end
  end
end
