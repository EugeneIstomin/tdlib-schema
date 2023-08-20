module TD::Types
  # The sponsor is a bot.
  #
  # @attr bot_user_id [Integer] User identifier of the bot.
  # @attr link [TD::Types::InternalLinkType] An internal link to be opened when the sponsored message is clicked.
  class MessageSponsorType::Bot < MessageSponsorType
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :link, TD::Types::InternalLinkType
  end
end
