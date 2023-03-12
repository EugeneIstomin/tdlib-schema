module TD::Types
  # Contains information about the origin of a forwarded message.
  class MessageForwardOrigin < Base
    %w[
      User
      Chat
      HiddenUser
      Channel
      MessageImport
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MessageForwardOrigin/#{type}"
    end
  end
end
