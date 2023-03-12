module TD::Types
  # Represents a type of a button in results of inline query.
  class InlineQueryResultsButtonType < Base
    %w[
      StartBot
      WebApp
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/InlineQueryResultsButtonType/#{type}"
    end
  end
end
