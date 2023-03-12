module TD::Types
  # Specifies the kind of chat members to return in searchChatMembers.
  class ChatMembersFilter < Base
    %w[
      Contacts
      Administrators
      Members
      Mention
      Restricted
      Banned
      Bots
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatMembersFilter/#{type}"
    end
  end
end
