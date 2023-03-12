module TD::Types
  # Contains information about a payment provider.
  class PaymentProvider < Base
    %w[
      SmartGlocal
      Stripe
      Other
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PaymentProvider/#{type}"
    end
  end
end
