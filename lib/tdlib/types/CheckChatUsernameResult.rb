module TD::Types
  # Represents result of checking whether a username can be set for a chat.
  class CheckChatUsernameResult < Base
    %w[
      Ok
      UsernameInvalid
      UsernameOccupied
      UsernamePurchasable
      PublicChatsTooMany
      PublicGroupsUnavailable
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/CheckChatUsernameResult/#{type}"
    end
  end
end
