module TD::Types
  # Describes the current call state.
  class CallState < Base
    %w[
      Pending
      ExchangingKeys
      Ready
      HangingUp
      Discarded
      Error
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/CallState/#{type}"
    end
  end
end
