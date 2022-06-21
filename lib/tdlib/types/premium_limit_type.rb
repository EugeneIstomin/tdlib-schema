module TD::Types
  # Describes type of a limit, increased for Premium users.
  class PremiumLimitType < Base
    %w[
      supergroup_count
      pinned_chat_count
      created_public_chat_count
      saved_animation_count
      favorite_sticker_count
      chat_filter_count
      chat_filter_chosen_chat_count
      pinned_archived_chat_count
      caption_length
      bio_length
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_limit_type/#{type}"
    end
  end
end
