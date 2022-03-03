module TD::Types
  # Represents a reaction applied to a message.
  #
  # @attr reaction [TD::Types::String] Text representation of the reaction.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the chat member, applied the reaction.
  class AddedReaction < Base
    attribute :reaction, TD::Types::String
    attribute :sender_id, TD::Types::MessageSender
  end
end
