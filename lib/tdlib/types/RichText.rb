module TD::Types
  # Describes a text object inside an instant-view web page.
  class RichText < Base
    %w[
      Plain
      Bold
      Italic
      Underline
      Strikethrough
      Fixed
      Url
      EmailAddress
      Subscript
      Superscript
      Marked
      PhoneNumber
      Icon
      Reference
      Anchor
      AnchorLink
      s
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/RichText/#{type}"
    end
  end
end
