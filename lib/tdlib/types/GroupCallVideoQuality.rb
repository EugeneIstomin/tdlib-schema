module TD::Types
  # Describes the quality of a group call video.
  class GroupCallVideoQuality < Base
    %w[
      Thumbnail
      Medium
      Full
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/GroupCallVideoQuality/#{type}"
    end
  end
end
