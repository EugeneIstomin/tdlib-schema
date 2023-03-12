module TD::Types
  # Describes the type of a poll.
  class PollType < Base
    %w[
      Regular
      Quiz
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PollType/#{type}"
    end
  end
end
