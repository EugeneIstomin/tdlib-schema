module TD::Types
  # Represents the value of an option.
  class OptionValue < Base
    %w[
      Boolean
      Empty
      Integer
      String
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/OptionValue/#{type}"
    end
  end
end
