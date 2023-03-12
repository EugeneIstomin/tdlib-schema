module TD::Types
  # Describes the current state of the connection to Telegram servers.
  class ConnectionState < Base
    %w[
      WaitingForNetwork
      ConnectingToProxy
      Connecting
      Updating
      Ready
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ConnectionState/#{type}"
    end
  end
end
