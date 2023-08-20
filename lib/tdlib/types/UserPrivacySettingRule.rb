module TD::Types
  # Represents a single rule for managing user privacy settings.
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
      autoload TD::Types.camelize(type), "tdlib/types/UserPrivacySettingRule/#{type}"
    end
  end
end
