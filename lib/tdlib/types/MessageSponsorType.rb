module TD::Types
  # Describes type of a message sponsor.
  class MessageSponsorType < Base
    %w[
      Bot
      PublicChannel
      PrivateChannel
      Website
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MessageSponsorType/#{type}"
    end
  end
end
