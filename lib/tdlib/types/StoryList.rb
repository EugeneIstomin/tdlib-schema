module TD::Types
  # Describes a list of stories.
  class StoryList < Base
    %w[
      Main
      Archive
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StoryList/#{type}"
    end
  end
end
