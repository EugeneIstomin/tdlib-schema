module TD::Types
  # Represents an RTMP url.
  #
  # @attr url [TD::Types::String] The URL.
  # @attr stream_key [TD::Types::String] Stream key.
  class RtmpUrl < Base
    attribute :url, TD::Types::String
    attribute :stream_key, TD::Types::String
  end
end
