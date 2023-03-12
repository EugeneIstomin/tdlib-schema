module TD::Types
  # Represents a single result of an inline query; for bots only.
  class InputInlineQueryResult < Base
    %w[
      Animation
      Article
      Audio
      Contact
      Document
      Game
      Location
      Photo
      Sticker
      Venue
      Video
      VoiceNote
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputInlineQueryResult/#{type}"
    end
  end
end
