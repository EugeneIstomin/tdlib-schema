module TD::Types
  # Provides information about the status of a member in a chat.
  class ChatMemberStatus < Base
    %w[
      Creator
      Administrator
      Member
      Restricted
      Left
      Banned
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ChatMemberStatus/#{type}"
    end
  end
end
