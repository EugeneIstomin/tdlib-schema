module TD::Types
  # Describes the type of notifications in a notification group.
  class NotificationGroupType < Base
    %w[
      Messages
      Mentions
      SecretChat
      Calls
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/NotificationGroupType/#{type}"
    end
  end
end
