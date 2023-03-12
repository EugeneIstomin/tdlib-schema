module TD::Types
  # Describes the type of a chat.
  class ChatType < Base
    %w[
      Private
      BasicGroup
      Supergroup
      Secret
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatType/#{type}"
    end
  end
end
