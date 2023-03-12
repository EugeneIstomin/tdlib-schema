module TD::Types
  # Contains information about a file with messages exported from another app.
  class MessageFileType < Base
    %w[
      Private
      Group
      Unknown
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/MessageFileType/#{type}"
    end
  end
end
