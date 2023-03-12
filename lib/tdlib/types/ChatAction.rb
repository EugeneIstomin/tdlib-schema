module TD::Types
  # Describes the different types of activity in a chat.
  class ChatAction < Base
    %w[
      Typing
      RecordingVideo
      UploadingVideo
      RecordingVoiceNote
      UploadingVoiceNote
      UploadingPhoto
      UploadingDocument
      ChoosingSticker
      ChoosingLocation
      ChoosingContact
      StartPlayingGame
      RecordingVideoNote
      UploadingVideoNote
      WatchingAnimations
      Cancel
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ChatAction/#{type}"
    end
  end
end
