module TD::Types
  # Provides information about the method by which an authentication code is delivered to the user.
  class AuthenticationCodeType < Base
    %w[
      TelegramMessage
      Sms
      Call
      FlashCall
      MissedCall
      Fragment
      FirebaseAndroid
      FirebaseIos
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/AuthenticationCodeType/#{type}"
    end
  end
end
