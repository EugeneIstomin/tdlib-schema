module TD::Types
  # The current user shared a user, which was requested by the bot.
  #
  # @attr user_id [Integer] Identifier of the shared user.
  # @attr button_id [Integer] Identifier of the keyboard button with the request.
  class MessageContent::UserShared < MessageContent
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :button_id, TD::Types::Coercible::Integer
  end
end
