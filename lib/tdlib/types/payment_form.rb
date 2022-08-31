module TD::Types
  # Contains information about an invoice payment form.
  #
  # @attr id [Integer] The payment form identifier.
  # @attr invoice [TD::Types::Invoice] Full information about the invoice.
  # @attr seller_bot_user_id [Integer] User identifier of the seller bot.
  # @attr payment_provider_user_id [Integer] User identifier of the payment provider bot.
  # @attr payment_provider [TD::Types::PaymentProvider] Information about the payment provider.
  # @attr additional_payment_options [Array<TD::Types::PaymentOption>] The list of additional payment options.
  # @attr saved_order_info [TD::Types::OrderInfo, nil] Saved server-side order information; may be null.
  # @attr saved_credentials [Array<TD::Types::SavedCredentials>] The list of saved payment credentials.
  # @attr can_save_credentials [Boolean] True, if the user can choose to save credentials.
  # @attr need_password [Boolean] True, if the user will be able to save credentials, if sets up a 2-step verification
  #   password.
  # @attr product_title [TD::Types::String] Product title.
  # @attr product_description [TD::Types::FormattedText] Product description.
  # @attr product_photo [TD::Types::Photo, nil] Product photo; may be null.
  class PaymentForm < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :invoice, TD::Types::Invoice
    attribute :seller_bot_user_id, TD::Types::Coercible::Integer
    attribute :payment_provider_user_id, TD::Types::Coercible::Integer
    attribute :payment_provider, TD::Types::PaymentProvider
    attribute :additional_payment_options, TD::Types::Array.of(TD::Types::PaymentOption)
    attribute :saved_order_info, TD::Types::OrderInfo.optional.default(nil)
    attribute :saved_credentials, TD::Types::Array.of(TD::Types::SavedCredentials)
    attribute :can_save_credentials, TD::Types::Bool
    attribute :need_password, TD::Types::Bool
    attribute :product_title, TD::Types::String
    attribute :product_description, TD::Types::FormattedText
    attribute :product_photo, TD::Types::Photo.optional.default(nil)
  end
end
