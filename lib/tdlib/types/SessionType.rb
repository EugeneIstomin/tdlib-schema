module TD::Types
  # Represents the type of a session.
  class SessionType < Base
    %w[
      Android
      Apple
      Brave
      Chrome
      Edge
      Firefox
      Ipad
      Iphone
      Linux
      Mac
      Opera
      Safari
      Ubuntu
      Unknown
      Vivaldi
      Windows
      Xbox
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/SessionType/#{type}"
    end
  end
end
