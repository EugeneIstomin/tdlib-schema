module TD::Types
  # Describes scope of autosave settings.
  class AutosaveSettingsScope < Base
    %w[
      PrivateChats
      GroupChats
      ChannelChats
      Chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/AutosaveSettingsScope/#{type}"
    end
  end
end
