module TD::Types
  # Represents the type of a network.
  class NetworkType < Base
    %w[
      None
      Mobile
      MobileRoaming
      WiFi
      Other
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/NetworkType/#{type}"
    end
  end
end
