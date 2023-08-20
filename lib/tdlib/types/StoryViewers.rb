module TD::Types
  # Represents a list of story viewers.
  #
  # @attr total_count [Integer] Approximate total number of story viewers found.
  # @attr viewers [Array<TD::Types::StoryViewer>] List of story viewers.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, there are no more results.
  class StoryViewers < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :viewers, TD::Types::Array.of(TD::Types::StoryViewer)
    attribute :next_offset, TD::Types::String
  end
end
