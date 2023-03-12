module TD::Types
  # Options to be used when a message is sent.
  #
  # @attr disable_notification [Boolean] Pass true to disable notification for the message.
  # @attr from_background [Boolean] Pass true if the message is sent from the background.
  # @attr protect_content [Boolean] Pass true if the content of the message must be protected from forwarding and
  #   saving; for bots only.
  # @attr update_order_of_installed_sticker_sets [Boolean] Pass true if the user explicitly chosen a sticker or a
  #   custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum.
  # @attr scheduling_state [TD::Types::MessageSchedulingState] Message scheduling state; pass null to send message
  #   immediately.
  #   Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled.
  # @attr sending_id [Integer] Non-persistent identifier, which will be returned back in
  #   {TD::Types::MessageSendingState::Pending} object and can be used to match sent messages and corresponding
  #   {TD::Types::Update::NewMessage} updates.
  class MessageSendOptions < Base
    attribute :disable_notification, TD::Types::Bool
    attribute :from_background, TD::Types::Bool
    attribute :protect_content, TD::Types::Bool
    attribute :update_order_of_installed_sticker_sets, TD::Types::Bool
    attribute :scheduling_state, TD::Types::MessageSchedulingState
    attribute :sending_id, TD::Types::Coercible::Integer
  end
end
