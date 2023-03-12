module TD::Types
  # Represents a single rule for managing privacy settings.
  class UserPrivacySettingRule < Base
    %w[
      AllowAll
      AllowContacts
      AllowUsers
      AllowChatMembers
      RestrictAll
      RestrictContacts
      RestrictUsers
      RestrictChatMembers
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/UserPrivacySettingRule/#{type}"
    end
  end
end
