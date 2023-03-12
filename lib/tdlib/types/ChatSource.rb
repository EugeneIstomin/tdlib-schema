module TD::Types
  # Describes a reason why an external chat is shown in a chat list.
  class ChatSource < Base
    %w[
      MtprotoProxy
      PublicServiceAnnouncement
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatSource/#{type}"
    end
  end
end
