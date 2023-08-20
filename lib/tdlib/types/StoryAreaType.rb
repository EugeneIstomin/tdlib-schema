module TD::Types
  # Describes type of a clickable rectangle area on a story media.
  class StoryAreaType < Base
    %w[
      Location
      Venue
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StoryAreaType/#{type}"
    end
  end
end
