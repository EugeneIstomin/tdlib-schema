module TD::Types
  # Describes type of an emoji category.
  class EmojiCategoryType < Base
    %w[
      default
      emoji_status
      chat_photo
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/emoji_category_type/#{type}"
    end
  end
end
