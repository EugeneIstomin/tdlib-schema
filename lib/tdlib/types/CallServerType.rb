module TD::Types
  # Describes the type of a call server.
  class CallServerType < Base
    %w[
      TelegramReflector
      Webrtc
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/CallServerType/#{type}"
    end
  end
end
