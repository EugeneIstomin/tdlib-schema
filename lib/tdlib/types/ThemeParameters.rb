module TD::Types
  # Contains parameters of the application theme.
  #
  # @attr background_color [Integer] A color of the background in the RGB24 format.
  # @attr secondary_background_color [Integer] A secondary color for the background in the RGB24 format.
  # @attr text_color [Integer] A color of text in the RGB24 format.
  # @attr hint_color [Integer] A color of hints in the RGB24 format.
  # @attr link_color [Integer] A color of links in the RGB24 format.
  # @attr button_color [Integer] A color of the buttons in the RGB24 format.
  # @attr button_text_color [Integer] A color of text on the buttons in the RGB24 format.
  class ThemeParameters < Base
    attribute :background_color, TD::Types::Coercible::Integer
    attribute :secondary_background_color, TD::Types::Coercible::Integer
    attribute :text_color, TD::Types::Coercible::Integer
    attribute :hint_color, TD::Types::Coercible::Integer
    attribute :link_color, TD::Types::Coercible::Integer
    attribute :button_color, TD::Types::Coercible::Integer
    attribute :button_text_color, TD::Types::Coercible::Integer
  end
end
