module TD::Types
  # Describes the last time the user was online.
  class UserStatus < Base
    %w[
      Empty
      Online
      Offline
      Recently
      LastWeek
      LastMonth
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/UserStatus/#{type}"
    end
  end
end
