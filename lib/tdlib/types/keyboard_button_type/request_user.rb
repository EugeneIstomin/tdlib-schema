module TD::Types
  # A button that requests a user to be shared by the current user; available only in private chats.
  # Use the method shareUserWithBot to complete the request.
  #
  # @attr id [Integer] Unique button identifier.
  # @attr restrict_user_is_bot [Boolean] True, if the shared user must or must not be a bot.
  # @attr user_is_bot [Boolean] True, if the shared user must be a bot; otherwise, the shared user must no be a bot.
  #   Ignored if restrict_user_is_bot is false.
  # @attr restrict_user_is_premium [Boolean] True, if the shared user must or must not be a Telegram Premium user.
  # @attr user_is_premium [Boolean] True, if the shared user must be a Telegram Premium user; otherwise, the shared
  #   user must no be a Telegram Premium user.
  #   Ignored if restrict_user_is_premium is false.
  class KeyboardButtonType::RequestUser < KeyboardButtonType
    attribute :id, TD::Types::Coercible::Integer
    attribute :restrict_user_is_bot, TD::Types::Bool
    attribute :user_is_bot, TD::Types::Bool
    attribute :restrict_user_is_premium, TD::Types::Bool
    attribute :user_is_premium, TD::Types::Bool
  end
end
