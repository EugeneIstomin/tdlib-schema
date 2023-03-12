module TD::Types
  # Represents a filter for message search results.
  class SearchMessagesFilter < Base
    %w[
      Empty
      Animation
      Audio
      Document
      Photo
      Video
      VoiceNote
      PhotoAndVideo
      Url
      ChatPhoto
      VideoNote
      VoiceAndVideoNote
      Mention
      UnreadMention
      UnreadReaction
      FailedToSend
      Pinned
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/SearchMessagesFilter/#{type}"
    end
  end
end
