module TD::Types
  # Represents a reaction applied to a message.
  #
  # @attr type [TD::Types::ReactionType] Type of the reaction.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the chat member, applied the reaction.
  class AddedReaction < Base
    attribute :type, TD::Types::ReactionType
    attribute :sender_id, TD::Types::MessageSender
  end
end
