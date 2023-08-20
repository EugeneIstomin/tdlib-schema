module TD::Types
  # Describes a story feature available to Premium users.
  class PremiumStoryFeature < Base
    %w[
      PriorityOrder
      StealthMode
      PermanentViewsHistory
      CustomExpirationDuration
      SaveStories
      LinksAndFormatting
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PremiumStoryFeature/#{type}"
    end
  end
end
