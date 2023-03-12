module TD::Types
  # Describes the types of chats to which notification settings are relevant.
  class NotificationSettingsScope < Base
    %w[
      PrivateChats
      GroupChats
      ChannelChats
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/NotificationSettingsScope/#{type}"
    end
  end
end
