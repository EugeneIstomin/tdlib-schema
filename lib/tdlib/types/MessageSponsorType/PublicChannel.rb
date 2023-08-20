module TD::Types
  # The sponsor is a public channel chat.
  #
  # @attr chat_id [Integer] Sponsor chat identifier.
  # @attr link [TD::Types::InternalLinkType, nil] An internal link to be opened when the sponsored message is clicked;
  #   may be null if the sponsor chat needs to be opened instead.
  class MessageSponsorType::PublicChannel < MessageSponsorType
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :link, TD::Types::InternalLinkType.optional.default(nil)
  end
end
