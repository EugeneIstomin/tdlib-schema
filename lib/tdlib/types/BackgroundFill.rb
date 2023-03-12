module TD::Types
  # Describes a fill of a background.
  class BackgroundFill < Base
    %w[
      Solid
      Gradient
      FreeformGradient
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/BackgroundFill/#{type}"
    end
  end
end
