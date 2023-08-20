module TD::Types
  # Describes a type of a block list.
  class BlockList < Base
    %w[
      Main
      Stories
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/BlockList/#{type}"
    end
  end
end
