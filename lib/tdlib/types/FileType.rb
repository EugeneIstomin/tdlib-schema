module TD::Types
  # Represents the type of a file.
  class FileType < Base
    %w[
      None
      Animation
      Audio
      Document
      NotificationSound
      Photo
      ProfilePhoto
      Secret
      SecretThumbnail
      Secure
      Sticker
      Thumbnail
      Unknown
      Video
      VideoNote
      VoiceNote
      Wallpaper
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/FileType/#{type}"
    end
  end
end
