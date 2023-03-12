module TD::Types
  # Describes a Vertical alignment of a table cell content.
  class PageBlockVerticalAlignment < Base
    %w[
      Top
      Middle
      Bottom
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/PageBlockVerticalAlignment/#{type}"
    end
  end
end
