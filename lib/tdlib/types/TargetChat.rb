module TD::Types
  # Describes the target chat to be opened.
  class TargetChat < Base
    %w[
      Current
      Chosen
      InternalLink
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/TargetChat/#{type}"
    end
  end
end
