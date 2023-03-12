module TD::Types
  # Contains settings for Firebase Authentication in the official applications.
  class FirebaseAuthenticationSettings < Base
    %w[
      Android
      Ios
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/FirebaseAuthenticationSettings/#{type}"
    end
  end
end
