module TD::Types
  # Describes a feature available to Premium users.
  class PremiumFeature < Base
    %w[
      IncreasedLimits
      IncreasedUploadFileSize
      ImprovedDownloadSpeed
      VoiceRecognition
      DisabledAds
      UniqueReactions
      UniqueStickers
      CustomEmoji
      AdvancedChatManagement
      ProfileBadge
      EmojiStatus
      AnimatedProfilePhoto
      ForumTopicIcon
      AppIcons
      RealTimeChatTranslation
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/PremiumFeature/#{type}"
    end
  end
end
