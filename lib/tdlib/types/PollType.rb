module TD::Types
  # Describes the type of a poll.
  class PollType < Base
    %w[
      Regular
      Quiz
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/PollType/#{type}"
    end
  end
end
