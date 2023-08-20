module TD::Types
  # Information about the sponsor of a message.
  #
  # @attr type [TD::Types::MessageSponsorType] Type of the sponsor.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Photo of the sponsor; may be null if must not be shown.
  # @attr info [TD::Types::String] Additional optional information about the sponsor to be shown along with the
  #   message.
  class MessageSponsor < Base
    attribute :type, TD::Types::MessageSponsorType
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :info, TD::Types::String
  end
end
