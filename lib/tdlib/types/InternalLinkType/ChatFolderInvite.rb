module TD::Types
  # The link is an invite link to a chat folder.
  # Call checkChatFolderInviteLink with the given invite link to process the link.
  #
  # @attr invite_link [TD::Types::String] Internal representation of the invite link.
  class InternalLinkType::ChatFolderInvite < InternalLinkType
    attribute :invite_link, TD::Types::String
  end
end
