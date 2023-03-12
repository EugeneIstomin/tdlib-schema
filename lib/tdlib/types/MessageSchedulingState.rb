module TD::Types
  # Contains information about the time when a scheduled message will be sent.
  class MessageSchedulingState < Base
    %w[
      SendAtDate
      SendWhenOnline
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/MessageSchedulingState/#{type}"
    end
  end
end
