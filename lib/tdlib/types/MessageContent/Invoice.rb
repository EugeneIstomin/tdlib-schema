module TD::Types
  # A message with an invoice from a bot.
  # Use getInternalLink with internalLinkTypeBotStart to share the invoice.
  #
  # @attr title [TD::Types::String] Product title.
  # @attr description [TD::Types::FormattedText] Product description.
  # @attr photo [TD::Types::Photo, nil] Product photo; may be null.
  # @attr currency [TD::Types::String] Currency for the product price.
  # @attr total_amount [Integer] Product total price in the smallest units of the currency.
  # @attr start_parameter [TD::Types::String] Unique invoice bot start_parameter to be passed to getInternalLink.
  # @attr is_test [Boolean] True, if the invoice is a test invoice.
  # @attr need_shipping_address [Boolean] True, if the shipping address must be specified.
  # @attr receipt_message_id [Integer] The identifier of the message with the receipt, after the product has been
  #   purchased.
  # @attr extended_media [TD::Types::MessageExtendedMedia, nil] Extended media attached to the invoice; may be null.
  class MessageContent::Invoice < MessageContent
    attribute :title, TD::Types::String
    attribute :description, TD::Types::FormattedText
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Coercible::Integer
    attribute :start_parameter, TD::Types::String
    attribute :is_test, TD::Types::Bool
    attribute :need_shipping_address, TD::Types::Bool
    attribute :receipt_message_id, TD::Types::Coercible::Integer
    attribute :extended_media, TD::Types::MessageExtendedMedia.optional.default(nil)
  end
end
