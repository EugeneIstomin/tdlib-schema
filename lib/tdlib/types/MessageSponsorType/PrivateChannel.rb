module TD::Types
  # The sponsor is a private channel chat.
  #
  # @attr title [TD::Types::String] Title of the chat.
  # @attr invite_link [TD::Types::String] Invite link for the channel.
  class MessageSponsorType::PrivateChannel < MessageSponsorType
    attribute :title, TD::Types::String
    attribute :invite_link, TD::Types::String
  end
end
