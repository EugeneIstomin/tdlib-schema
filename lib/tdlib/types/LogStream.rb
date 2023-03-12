module TD::Types
  # Describes a stream to which TDLib internal log is written.
  class LogStream < Base
    %w[
      Default
      File
      Empty
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/LogStream/#{type}"
    end
  end
end
