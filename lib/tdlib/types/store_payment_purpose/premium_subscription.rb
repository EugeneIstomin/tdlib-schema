module TD::Types
  # The user subscribed to Telegram Premium.
  #
  # @attr is_restore [Boolean] Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
  class StorePaymentPurpose::PremiumSubscription < StorePaymentPurpose
    attribute :is_restore, TD::Types::Bool
  end
end
