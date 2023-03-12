module TD::Types
  # Represents the scope to which bot commands are relevant.
  class BotCommandScope < Base
    %w[
      Default
      AllPrivateChats
      AllGroupChats
      AllChatAdministrators
      Chat
      ChatAdministrators
      ChatMember
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/BotCommandScope/#{type}"
    end
  end
end
