module TD::Types
  # Represents an available reaction.
  #
  # @attr reaction [TD::Types::String] Text representation of the reaction.
  # @attr needs_premium [Boolean] True, if Telegram Premium is needed to send the reaction.
  class AvailableReaction < Base
    attribute :reaction, TD::Types::String
    attribute :needs_premium, TD::Types::Bool
  end
end
