module TD::Types
  # Represents a viewer of a story.
  #
  # @attr user_id [Integer] User identifier of the viewer.
  # @attr view_date [Integer] Approximate point in time (Unix timestamp) when the story was viewed.
  # @attr block_list [TD::Types::BlockList, nil] Block list to which the user is added; may be null if none.
  # @attr chosen_reaction_type [TD::Types::ReactionType, nil] Type of the reaction that was chosen by the user; may be
  #   null if none.
  class StoryViewer < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :view_date, TD::Types::Coercible::Integer
    attribute :block_list, TD::Types::BlockList.optional.default(nil)
    attribute :chosen_reaction_type, TD::Types::ReactionType.optional.default(nil)
  end
end
