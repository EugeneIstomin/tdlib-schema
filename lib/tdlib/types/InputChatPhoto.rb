module TD::Types
  # Describes a photo to be set as a user profile or chat photo.
  class InputChatPhoto < Base
    %w[
      Previous
      Static
      Animation
      Sticker
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/InputChatPhoto/#{type}"
    end
  end
end
