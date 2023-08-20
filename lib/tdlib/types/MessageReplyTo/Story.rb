module TD::Types
  # Describes a replied story.
  #
  # @attr story_sender_chat_id [Integer] The identifier of the sender of the replied story.
  #   Currently, stories can be replied only in the sender's chat.
  # @attr story_id [Integer] The identifier of the replied story.
  class MessageReplyTo::Story < MessageReplyTo
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
