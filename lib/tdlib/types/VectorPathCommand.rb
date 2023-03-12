module TD::Types
  # Represents a vector path command.
  class VectorPathCommand < Base
    %w[
      Line
      CubicBezierCurve
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/VectorPathCommand/#{type}"
    end
  end
end
