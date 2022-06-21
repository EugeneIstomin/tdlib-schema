module TD::Types
  # Contains information about an invoice payment form.
  #
  # @attr id [Integer] The payment form identifier.
  # @attr invoice [TD::Types::Invoice] Full information about the invoice.
  # @attr seller_bot_user_id [Integer] User identifier of the seller bot.
  # @attr payment_provider_user_id [Integer] User identifier of the payment provider bot.
  # @attr payment_provider [TD::Types::PaymentProvider] Information about the payment provider.
  # @attr saved_order_info [TD::Types::OrderInfo, nil] Saved server-side order information; may be null.
  # @attr saved_credentials [TD::Types::SavedCredentials, nil] Information about saved card credentials; may be null.
  # @attr can_save_credentials [Boolean] True, if the user can choose to save credentials.
  # @attr need_password [Boolean] True, if the user will be able to save credentials protected by a password they set
  #   up.
  # @attr product_title [TD::Types::String] Product title.
  # @attr product_description [TD::Types::FormattedText] Product description.
  # @attr product_photo [TD::Types::Photo, nil] Product photo; may be null.
  class PaymentForm < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :invoice, TD::Types::Invoice
    attribute :seller_bot_user_id, TD::Types::Coercible::Integer
    attribute :payment_provider_user_id, TD::Types::Coercible::Integer
    attribute :payment_provider, TD::Types::PaymentProvider
    attribute :saved_order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :saved_credentials, TD::Types::SavedCredentials.optional.default(nil)
    attribute :can_save_credentials, TD::Types::Bool
    attribute :need_password, TD::Types::Bool
    attribute :product_title, TD::Types::String
    attribute :product_description, TD::Types::FormattedText
    attribute :product_photo, TD::Types::Photo.optional.default(nil)
  end
end
