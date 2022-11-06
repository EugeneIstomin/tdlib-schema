module TD::Types
  # TDLib needs the user's authentication code sent to an email address to authorize.
  # Call `checkAuthenticationEmailCode` to provide the code.
  #
  # @attr allow_apple_id [Boolean] True, if authorization through Apple ID is allowed.
  # @attr allow_google_id [Boolean] True, if authorization through Google ID is allowed.
  # @attr code_info [TD::Types::EmailAddressAuthenticationCodeInfo] Information about the sent authentication code.
  # @attr next_phone_number_authorization_date [Integer] Point in time (Unix timestamp) when the user will be able to
  #   authorize with a code sent to the user's phone number; 0 if unknown.
  class AuthorizationState::WaitEmailCode < AuthorizationState
    attribute :allow_apple_id, TD::Types::Bool
    attribute :allow_google_id, TD::Types::Bool
    attribute :code_info, TD::Types::EmailAddressAuthenticationCodeInfo
    attribute :next_phone_number_authorization_date, TD::Types::Coercible::Integer
  end
end
