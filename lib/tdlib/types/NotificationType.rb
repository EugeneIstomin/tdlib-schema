module TD::Types
  # Contains detailed information about a notification.
  class NotificationType < Base
    %w[
      NewMessage
      NewSecretChat
      NewCall
      NewPushMessage
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/NotificationType/#{type}"
    end
  end
end
