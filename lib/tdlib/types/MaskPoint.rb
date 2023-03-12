module TD::Types
  # Part of the face, relative to which a mask is placed.
  class MaskPoint < Base
    %w[
      Forehead
      Eyes
      Mouth
      Chin
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MaskPoint/#{type}"
    end
  end
end
