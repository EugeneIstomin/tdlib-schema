module TD::Types
  # Describes type of a limit, increased for Premium users.
  class PremiumLimitType < Base
    %w[
      SupergroupCount
      PinnedChatCount
      CreatedPublicChatCount
      SavedAnimationCount
      FavoriteStickerCount
      ChatFilterCount
      ChatFilterChosenChatCount
      PinnedArchivedChatCount
      CaptionLength
      BioLength
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/PremiumLimitType/#{type}"
    end
  end
end
