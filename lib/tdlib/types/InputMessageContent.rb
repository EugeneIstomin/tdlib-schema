module TD::Types
  # The content of a message to send.
  class InputMessageContent < Base
    %w[
      Text
      Animation
      Audio
      Document
      Photo
      Sticker
      Video
      VideoNote
      VoiceNote
      Location
      Venue
      Contact
      Dice
      Game
      Invoice
      Poll
      Forwarded
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputMessageContent/#{type}"
    end
  end
end
