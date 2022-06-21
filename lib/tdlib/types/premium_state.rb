module TD::Types
  # Contains state of Telegram Premium subscription and promotion videos for Premium features.
  #
  # @attr state [TD::Types::FormattedText, nil] Text description of the state of the current Premium subscription; may
  #   be empty if the current user has no Telegram Premium subscription.
  # @attr currency [TD::Types::String] ISO 4217 currency code for Telegram Premium subscription payment.
  # @attr monthly_amount [Integer] Monthly subscription payment for Telegram Premium subscription, in the smallest
  #   units of the currency.
  # @attr animations [Array<TD::Types::PremiumFeaturePromotionAnimation>] The list of available promotion animations
  #   for Premium features.
  class PremiumState < Base
    attribute :state, TD::Types::FormattedText.optional.default(nil)
    attribute :currency, TD::Types::String
    attribute :monthly_amount, TD::Types::Coercible::Integer
    attribute :animations, TD::Types::Array.of(TD::Types::PremiumFeaturePromotionAnimation)
  end
end
