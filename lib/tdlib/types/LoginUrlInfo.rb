module TD::Types
  # Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
  class LoginUrlInfo < Base
    %w[
      Open
      RequestConfirmation
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/LoginUrlInfo/#{type}"
    end
  end
end
