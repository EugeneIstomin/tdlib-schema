module TD::Types
  # Contains statistics about network usage.
  class NetworkStatisticsEntry < Base
    %w[
      File
      Call
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/NetworkStatisticsEntry/#{type}"
    end
  end
end
