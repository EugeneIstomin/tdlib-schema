module TD::Types
  # The link is a link to a user by its phone number.
  # Call searchUserByPhoneNumber with the given phone number to process the link.
  #
  # @attr phone_number [TD::Types::String] Phone number of the user.
  class InternalLinkType::UserPhoneNumber < InternalLinkType
    attribute :phone_number, TD::Types::String
  end
end
