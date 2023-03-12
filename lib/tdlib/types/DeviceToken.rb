module TD::Types
  # Represents a data needed to subscribe for push notifications through registerDevice method.
  # To use specific push notification service, the correct application platform must be specified and a valid server
  #   authentication data must be uploaded at https://my.telegram.org.
  class DeviceToken < Base
    %w[
      FirebaseCloudMessaging
      ApplePush
      ApplePushVoIP
      WindowsPush
      MicrosoftPush
      MicrosoftPushVoIP
      WebPush
      SimplePush
      UbuntuPush
      BlackBerryPush
      TizenPush
      HuaweiPush
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/DeviceToken/#{type}"
    end
  end
end
