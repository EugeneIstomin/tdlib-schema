module TD::Types
  # Describes the current secret chat state.
  class SecretChatState < Base
    %w[
      Pending
      Ready
      Closed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/SecretChatState/#{type}"
    end
  end
end
