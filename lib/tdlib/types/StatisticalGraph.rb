module TD::Types
  # Describes a statistical graph.
  class StatisticalGraph < Base
    %w[
      Data
      Async
      Error
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/StatisticalGraph/#{type}"
    end
  end
end
