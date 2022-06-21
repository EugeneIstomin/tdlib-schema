module TD::Types
  # Contains information about notification settings for a chat.
  #
  # @attr use_default_mute_for [Boolean] If true, mute_for is ignored and the value for the relevant type of chat is
  #   used instead.
  # @attr mute_for [Integer] Time left before notifications will be unmuted, in seconds.
  # @attr use_default_sound [Boolean] If true, the value for the relevant type of chat is used instead of sound_id.
  # @attr sound_id [Integer] Identifier of the notification sound to be played; 0 if sound is disabled.
  # @attr use_default_show_preview [Boolean] If true, show_preview is ignored and the value for the relevant type of
  #   chat is used instead.
  # @attr show_preview [Boolean] True, if message content must be displayed in notifications.
  # @attr use_default_disable_pinned_message_notifications [Boolean] If true, disable_pinned_message_notifications is
  #   ignored and the value for the relevant type of chat is used instead.
  # @attr disable_pinned_message_notifications [Boolean] If true, notifications for incoming pinned messages will be
  #   created as for an ordinary unread message.
  # @attr use_default_disable_mention_notifications [Boolean] If true, disable_mention_notifications is ignored and the
  #   value for the relevant type of chat is used instead.
  # @attr disable_mention_notifications [Boolean] If true, notifications for messages with mentions will be created as
  #   for an ordinary unread message.
  class ChatNotificationSettings < Base
    attribute :use_default_mute_for, TD::Types::Bool
    attribute :mute_for, TD::Types::Coercible::Integer
    attribute :use_default_sound, TD::Types::Bool
    attribute :sound_id, TD::Types::Coercible::Integer
    attribute :use_default_show_preview, TD::Types::Bool
    attribute :show_preview, TD::Types::Bool
    attribute :use_default_disable_pinned_message_notifications, TD::Types::Bool
    attribute :disable_pinned_message_notifications, TD::Types::Bool
    attribute :use_default_disable_mention_notifications, TD::Types::Bool
    attribute :disable_mention_notifications, TD::Types::Bool
  end
end
