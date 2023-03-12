module TD::Types
  # Contains animated stickers which must be used for dice animation rendering.
  class DiceStickers < Base
    %w[
      Regular
      SlotMachine
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/DiceStickers/#{type}"
    end
  end
end
