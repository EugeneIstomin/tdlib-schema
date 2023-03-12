module TD::Types
  # Specifies the kind of chat members to return in getSupergroupMembers.
  class SupergroupMembersFilter < Base
    %w[
      Recent
      Contacts
      Administrators
      Search
      Restricted
      Banned
      Mention
      Bots
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/SupergroupMembersFilter/#{type}"
    end
  end
end
