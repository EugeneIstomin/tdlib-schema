module TD::Types
  # Represents a type of a button in results of inline query.
  class InlineQueryResultsButtonType < Base
    %w[
      start_bot
      web_app
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/inline_query_results_button_type/#{type}"
    end
  end
end
