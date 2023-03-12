module TD::Types
  # Describes type of message reaction.
  class ReactionType < Base
    %w[
      Emoji
      CustomEmoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ReactionType/#{type}"
    end
  end
end
