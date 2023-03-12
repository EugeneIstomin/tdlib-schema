module TD::Types
  # Describes the type of a proxy server.
  class ProxyType < Base
    %w[
      Socks5
      Http
      Mtproto
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ProxyType/#{type}"
    end
  end
end
