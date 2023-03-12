module TD::Types
  # Represents a payload of a callback query.
  class CallbackQueryPayload < Base
    %w[
      Data
      DataWithPassword
      Game
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/CallbackQueryPayload/#{type}"
    end
  end
end
