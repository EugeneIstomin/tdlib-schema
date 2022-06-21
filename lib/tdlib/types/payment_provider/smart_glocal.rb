module TD::Types
  # Smart Glocal payment provider.
  #
  # @attr public_token [TD::Types::String] Public payment token.
  class PaymentProvider::SmartGlocal < PaymentProvider
    attribute :public_token, TD::Types::String
  end
end
