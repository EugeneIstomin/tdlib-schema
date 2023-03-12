module TD::Types
  # Represents a bot, which can be added to attachment menu.
  #
  # @attr bot_user_id [Integer] User identifier of the bot added to attachment menu.
  # @attr supports_self_chat [Boolean] True, if the bot supports opening from attachment menu in the chat with the bot.
  # @attr supports_user_chats [Boolean] True, if the bot supports opening from attachment menu in private chats with
  #   ordinary users.
  # @attr supports_bot_chats [Boolean] True, if the bot supports opening from attachment menu in private chats with
  #   other bots.
  # @attr supports_group_chats [Boolean] True, if the bot supports opening from attachment menu in basic group and
  #   supergroup chats.
  # @attr supports_channel_chats [Boolean] True, if the bot supports opening from attachment menu in channel chats.
  # @attr supports_settings [Boolean] True, if the bot supports "settings_button_pressed" event.
  # @attr request_write_access [Boolean] True, if the user must be asked for the permission to the bot to send them
  #   messages.
  # @attr name [TD::Types::String] Name for the bot in attachment menu.
  # @attr name_color [TD::Types::AttachmentMenuBotColor, nil] Color to highlight selected name of the bot if
  #   appropriate; may be null.
  # @attr default_icon [TD::Types::File, nil] Default attachment menu icon for the bot in SVG format; may be null.
  # @attr ios_static_icon [TD::Types::File, nil] Attachment menu icon for the bot in SVG format for the official iOS
  #   app; may be null.
  # @attr ios_animated_icon [TD::Types::File, nil] Attachment menu icon for the bot in TGS format for the official iOS
  #   app; may be null.
  # @attr android_icon [TD::Types::File, nil] Attachment menu icon for the bot in TGS format for the official Android
  #   app; may be null.
  # @attr macos_icon [TD::Types::File, nil] Attachment menu icon for the bot in TGS format for the official native
  #   macOS app; may be null.
  # @attr icon_color [TD::Types::AttachmentMenuBotColor, nil] Color to highlight selected icon of the bot if
  #   appropriate; may be null.
  # @attr web_app_placeholder [TD::Types::File, nil] Default placeholder for opened Web Apps in SVG format; may be
  #   null.
  class AttachmentMenuBot < Base
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :supports_self_chat, TD::Types::Bool
    attribute :supports_user_chats, TD::Types::Bool
    attribute :supports_bot_chats, TD::Types::Bool
    attribute :supports_group_chats, TD::Types::Bool
    attribute :supports_channel_chats, TD::Types::Bool
    attribute :supports_settings, TD::Types::Bool
    attribute :request_write_access, TD::Types::Bool
    attribute :name, TD::Types::String
    attribute :name_color, TD::Types::AttachmentMenuBotColor.optional.default(nil)
    attribute :default_icon, TD::Types::File.optional.default(nil)
    attribute :ios_static_icon, TD::Types::File.optional.default(nil)
    attribute :ios_animated_icon, TD::Types::File.optional.default(nil)
    attribute :android_icon, TD::Types::File.optional.default(nil)
    attribute :macos_icon, TD::Types::File.optional.default(nil)
    attribute :icon_color, TD::Types::AttachmentMenuBotColor.optional.default(nil)
    attribute :web_app_placeholder, TD::Types::File.optional.default(nil)
  end
end
