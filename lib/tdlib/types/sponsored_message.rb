module TD::Types
  # Describes a sponsored message.
  #
  # @attr message_id [Integer] Message identifier; unique for the chat to which the sponsored message belongs among
  #   both ordinary and sponsored messages.
  # @attr is_recommended [Boolean] True, if the message needs to be labeled as "recommended" instead of "sponsored".
  # @attr sponsor_chat_id [Integer] Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite
  #   link.
  # @attr sponsor_chat_info [TD::Types::ChatInviteLinkInfo, nil] Information about the sponsor chat; may be null unless
  #   sponsor_chat_id == 0.
  # @attr link [TD::Types::InternalLinkType, nil] An internal link to be opened when the sponsored message is clicked;
  #   may be null if the sponsor chat needs to be opened instead.
  # @attr content [TD::Types::MessageContent] Content of the message.
  #   Currently, can be only of the type messageText.
  class SponsoredMessage < Base
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :is_recommended, TD::Types::Bool
    attribute :sponsor_chat_id, TD::Types::Coercible::Integer
    attribute :sponsor_chat_info, TD::Types::ChatInviteLinkInfo.optional.default(nil)
    attribute :link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :content, TD::Types::MessageContent
  end
end
