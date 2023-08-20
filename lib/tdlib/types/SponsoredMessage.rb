module TD::Types
  # Describes a sponsored message.
  #
  # @attr message_id [Integer] Message identifier; unique for the chat to which the sponsored message belongs among
  #   both ordinary and sponsored messages.
  # @attr is_recommended [Boolean] True, if the message needs to be labeled as "recommended" instead of "sponsored".
  # @attr content [TD::Types::MessageContent] Content of the message.
  #   Currently, can be only of the type messageText.
  # @attr sponsor [TD::Types::MessageSponsor] Information about the sponsor of the message.
  # @attr additional_info [TD::Types::String] If non-empty, additional information about the sponsored message to be
  #   shown along with the message.
  class SponsoredMessage < Base
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :is_recommended, TD::Types::Bool
    attribute :content, TD::Types::MessageContent
    attribute :sponsor, TD::Types::MessageSponsor
    attribute :additional_info, TD::Types::String
  end
end
