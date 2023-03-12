module TD::Types
  # Describes the reason why a call was discarded.
  class CallDiscardReason < Base
    %w[
      Empty
      Missed
      Declined
      Disconnected
      HungUp
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/CallDiscardReason/#{type}"
    end
  end
end
