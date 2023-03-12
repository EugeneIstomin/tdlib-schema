module TD::Types
  # Describes the way the text needs to be parsed for text entities.
  class TextParseMode < Base
    %w[
      Markdown
      HTML
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/TextParseMode/#{type}"
    end
  end
end
