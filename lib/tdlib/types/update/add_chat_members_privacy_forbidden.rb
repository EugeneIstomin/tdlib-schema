module TD::Types
  # Adding users to a chat has failed because of their privacy settings.
  # An invite link can be shared with the users if appropriate.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr user_ids [Array<Integer>] Identifiers of users, which weren't added because of their privacy settings.
  class Update::AddChatMembersPrivacyForbidden < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
