module TD::Types
  # The link is a link to a user by a temporary token.
  # Call searchUserByToken with the given token to process the link.
  #
  # @attr token [TD::Types::String] The token.
  class InternalLinkType::UserToken < InternalLinkType
    attribute :token, TD::Types::String
  end
end
