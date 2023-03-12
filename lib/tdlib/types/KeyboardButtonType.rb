module TD::Types
  # Describes a keyboard button type.
  class KeyboardButtonType < Base
    %w[
      Text
      RequestPhoneNumber
      RequestLocation
      RequestPoll
      RequestUser
      RequestChat
      WebApp
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/KeyboardButtonType/#{type}"
    end
  end
end
