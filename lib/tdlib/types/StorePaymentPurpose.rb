module TD::Types
  # Describes a purpose of an in-store payment.
  class StorePaymentPurpose < Base
    %w[
      PremiumSubscription
      GiftedPremium
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StorePaymentPurpose/#{type}"
    end
  end
end
