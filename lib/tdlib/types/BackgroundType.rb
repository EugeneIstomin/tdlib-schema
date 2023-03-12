module TD::Types
  # Describes the type of a background.
  class BackgroundType < Base
    %w[
      Wallpaper
      Pattern
      Fill
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/BackgroundType/#{type}"
    end
  end
end
