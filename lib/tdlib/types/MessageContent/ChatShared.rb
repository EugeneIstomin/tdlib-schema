module TD::Types
  # The current user shared a chat, which was requested by the bot.
  #
  # @attr chat_id [Integer] Identifier of the shared chat.
  # @attr button_id [Integer] Identifier of the keyboard button with the request.
  class MessageContent::ChatShared < MessageContent
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :button_id, TD::Types::Coercible::Integer
  end
end
