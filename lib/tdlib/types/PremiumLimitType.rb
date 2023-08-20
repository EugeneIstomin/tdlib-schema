module TD::Types
  # Describes type of a limit, increased for Premium users.
  class PremiumLimitType < Base
    %w[
      SupergroupCount
      PinnedChatCount
      CreatedPublicChatCount
      SavedAnimationCount
      FavoriteStickerCount
      ChatFolderCount
      ChatFolderChosenChatCount
      PinnedArchivedChatCount
      CaptionLength
      BioLength
      ChatFolderInviteLinkCount
      ShareableChatFolderCount
      ActiveStoryCount
      WeeklySentStoryCount
      MonthlySentStoryCount
      StoryCaptionLength
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PremiumLimitType/#{type}"
    end
  end
end
