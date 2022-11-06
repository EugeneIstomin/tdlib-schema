module TD::Types
  # Represents a list of reactions that can be added to a message.
  #
  # @attr top_reactions [Array<TD::Types::AvailableReaction>] List of reactions to be shown at the top.
  # @attr recent_reactions [Array<TD::Types::AvailableReaction>] List of recently used reactions.
  # @attr popular_reactions [Array<TD::Types::AvailableReaction>] List of popular reactions.
  # @attr allow_custom_emoji [Boolean] True, if custom emoji reactions could be added by Telegram Premium subscribers.
  class AvailableReactions < Base
    attribute :top_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :recent_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :popular_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :allow_custom_emoji, TD::Types::Bool
  end
end
