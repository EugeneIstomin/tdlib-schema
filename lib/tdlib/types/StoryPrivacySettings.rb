module TD::Types
  # Describes privacy settings of a story.
  class StoryPrivacySettings < Base
    %w[
      Everyone
      Contacts
      CloseFriends
      SelectedContacts
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StoryPrivacySettings/#{type}"
    end
  end
end
