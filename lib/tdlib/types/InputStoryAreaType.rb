module TD::Types
  # Describes type of a clickable rectangle area on a story media to be added.
  class InputStoryAreaType < Base
    %w[
      Location
      FoundVenue
      PreviousVenue
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputStoryAreaType/#{type}"
    end
  end
end
