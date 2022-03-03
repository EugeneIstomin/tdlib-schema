module TD::Types
  # Represents a chat event.
  class ChatEventAction < Base
    %w[
      message_edited
      message_deleted
      message_pinned
      message_unpinned
      poll_stopped
      member_joined
      member_joined_by_invite_link
      member_joined_by_request
      member_invited
      member_left
      member_promoted
      member_restricted
      available_reactions_changed
      description_changed
      linked_chat_changed
      location_changed
      message_ttl_changed
      permissions_changed
      photo_changed
      slow_mode_delay_changed
      sticker_set_changed
      title_changed
      username_changed
      has_protected_content_toggled
      invites_toggled
      is_all_history_available_toggled
      sign_messages_toggled
      invite_link_edited
      invite_link_revoked
      invite_link_deleted
      video_chat_created
      video_chat_ended
      video_chat_mute_new_participants_toggled
      video_chat_participant_is_muted_toggled
      video_chat_participant_volume_level_changed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_event_action/#{type}"
    end
  end
end
