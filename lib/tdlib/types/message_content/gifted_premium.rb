module TD::Types
  # Telegram Premium was gifted to the user.
  #
  # @attr currency [TD::Types::String] Currency for the paid amount.
  # @attr amount [Integer] The paid amount, in the smallest units of the currency.
  # @attr month_count [Integer] Number of month the Telegram Premium subscription will be active.
  # @attr sticker [TD::Types::Sticker, nil] A sticker to be shown in the message; may be null if unknown.
  class MessageContent::GiftedPremium < MessageContent
    attribute :currency, TD::Types::String
    attribute :amount, TD::Types::Coercible::Integer
    attribute :month_count, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
