module TD::Types
  # Represents a single result of an inline query.
  class InlineQueryResult < Base
    %w[
      Article
      Contact
      Location
      Venue
      Game
      Animation
      Audio
      Document
      Photo
      Sticker
      Video
      VoiceNote
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InlineQueryResult/#{type}"
    end
  end
end
