module TD::Types
  # Describes available user privacy settings.
  class UserPrivacySetting < Base
    %w[
      ShowStatus
      ShowProfilePhoto
      ShowLinkInForwardedMessages
      ShowPhoneNumber
      AllowChatInvites
      AllowCalls
      AllowPeerToPeerCalls
      AllowFindingByPhoneNumber
      AllowPrivateVoiceAndVideoNoteMessages
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/UserPrivacySetting/#{type}"
    end
  end
end
