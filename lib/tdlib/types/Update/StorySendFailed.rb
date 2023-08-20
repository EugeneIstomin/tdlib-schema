module TD::Types
  # A story failed to send.
  # If the story sending is canceled, then updateStoryDeleted will be received instead of this update.
  #
  # @attr story [TD::Types::Story] The failed to send story.
  # @attr error [TD::Types::CanSendStoryResult, nil] The cause of the failure; may be null if unknown.
  # @attr error_code [Integer] An error code.
  # @attr error_message [TD::Types::String] Error message.
  class Update::StorySendFailed < Update
    attribute :story, TD::Types::Story
    attribute :error, TD::Types::CanSendStoryResult.optional.default(nil)
    attribute :error_code, TD::Types::Coercible::Integer
    attribute :error_message, TD::Types::String
  end
end
