module TD::Types
  # The content of a story to send.
  class InputStoryContent < Base
    %w[
      Photo
      Video
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputStoryContent/#{type}"
    end
  end
end
