module TD::Types
  # Describes type of an emoji category.
  class EmojiCategoryType < Base
    %w[
      Default
      EmojiStatus
      ChatPhoto
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/EmojiCategoryType/#{type}"
    end
  end
end
