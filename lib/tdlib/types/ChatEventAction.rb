module TD::Types
  # Represents a chat event.
  class ChatEventAction < Base
    %w[
      MessageEdited
      MessageDeleted
      MessagePinned
      MessageUnpinned
      PollStopped
      MemberJoined
      MemberJoinedByInviteLink
      MemberJoinedByRequest
      MemberInvited
      MemberLeft
      MemberPromoted
      MemberRestricted
      AvailableReactionsChanged
      DescriptionChanged
      LinkedChatChanged
      LocationChanged
      MessageAutoDeleteTimeChanged
      PermissionsChanged
      PhotoChanged
      SlowModeDelayChanged
      StickerSetChanged
      TitleChanged
      UsernameChanged
      ActiveUsernamesChanged
      HasProtectedContentToggled
      InvitesToggled
      IsAllHistoryAvailableToggled
      HasAggressiveAntiSpamEnabledToggled
      SignMessagesToggled
      InviteLinkEdited
      InviteLinkRevoked
      InviteLinkDeleted
      VideoChatCreated
      VideoChatEnded
      VideoChatMuteNewParticipantsToggled
      VideoChatParticipantIsMutedToggled
      VideoChatParticipantVolumeLevelChanged
      IsForumToggled
      ForumTopicCreated
      ForumTopicEdited
      ForumTopicToggleIsClosed
      ForumTopicToggleIsHidden
      ForumTopicDeleted
      ForumTopicPinned
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatEventAction/#{type}"
    end
  end
end
