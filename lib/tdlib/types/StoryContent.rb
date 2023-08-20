module TD::Types
  # Contains the content of a story.
  class StoryContent < Base
    %w[
      Photo
      Video
      Unsupported
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StoryContent/#{type}"
    end
  end
end
