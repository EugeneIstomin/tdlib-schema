module TD::Types
  # Represents a JSON value.
  class JsonValue < Base
    %w[
      Null
      Boolean
      Number
      String
      Array
      Object
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/JsonValue/#{type}"
    end
  end
end
