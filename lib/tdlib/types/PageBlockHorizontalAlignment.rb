module TD::Types
  # Describes a horizontal alignment of a table cell content.
  class PageBlockHorizontalAlignment < Base
    %w[
      Left
      Center
      Right
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PageBlockHorizontalAlignment/#{type}"
    end
  end
end
