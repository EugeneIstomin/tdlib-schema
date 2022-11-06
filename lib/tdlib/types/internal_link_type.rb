module TD::Types
  # Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
  class InternalLinkType < Base
    %w[
      active_sessions
      attachment_menu_bot
      authentication_code
      background
      bot_start
      bot_start_in_group
      bot_add_to_channel
      change_phone_number
      chat_invite
      filter_settings
      game
      instant_view
      invoice
      language_pack
      language_settings
      message
      message_draft
      passport_data_request
      phone_number_confirmation
      premium_features
      privacy_and_security_settings
      proxy
      public_chat
      qr_code_authentication
      restore_purchases
      settings
      sticker_set
      theme
      theme_settings
      unknown_deep_link
      unsupported_proxy
      user_phone_number
      video_chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/internal_link_type/#{type}"
    end
  end
end
