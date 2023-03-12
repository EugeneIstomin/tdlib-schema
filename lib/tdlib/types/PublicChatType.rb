module TD::Types
  # Describes a type of public chats.
  class PublicChatType < Base
    %w[
      HasUsername
      IsLocationBased
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PublicChatType/#{type}"
    end
  end
end
