module TD::Types
  # Represents result of checking whether the current user can send a story.
  class CanSendStoryResult < Base
    %w[
      Ok
      PremiumNeeded
      ActiveStoryLimitExceeded
      WeeklyLimitExceeded
      MonthlyLimitExceeded
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/CanSendStoryResult/#{type}"
    end
  end
end
