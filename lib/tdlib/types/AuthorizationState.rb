module TD::Types
  # Represents the current authorization state of the TDLib client.
  class AuthorizationState < Base
    %w[
      WaitTdlibParameters
      WaitPhoneNumber
      WaitEmailAddress
      WaitEmailCode
      WaitCode
      WaitOtherDeviceConfirmation
      WaitRegistration
      WaitPassword
      Ready
      LoggingOut
      Closing
      Closed
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/AuthorizationState/#{type}"
    end
  end
end
