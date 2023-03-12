module TD::Types
  # Describes format of a thumbnail.
  class ThumbnailFormat < Base
    %w[
      Jpeg
      Gif
      Mpeg4
      Png
      Tgs
      Webm
      Webp
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ThumbnailFormat/#{type}"
    end
  end
end
