module TD::Types
  # Represents the value of a string in a language pack.
  class LanguagePackStringValue < Base
    %w[
      Ordinary
      Pluralized
      Deleted
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/LanguagePackStringValue/#{type}"
    end
  end
end
