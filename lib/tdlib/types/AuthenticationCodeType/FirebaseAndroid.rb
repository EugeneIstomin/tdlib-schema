module TD::Types
  # An authentication code is delivered via Firebase Authentication to the official Android application.
  #
  # @attr nonce [String] Nonce to pass to the SafetyNet Attestation API.
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::FirebaseAndroid < AuthenticationCodeType
    attribute :nonce, TD::Types::Coercible::String
    attribute :length, TD::Types::Coercible::Integer
  end
end
