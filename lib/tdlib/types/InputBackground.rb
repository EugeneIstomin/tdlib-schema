module TD::Types
  # Contains information about background to set.
  class InputBackground < Base
    %w[
      Local
      Remote
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputBackground/#{type}"
    end
  end
end
