module TD::Types
  # Describes actions which must be possible to do through a chat action bar.
  class ChatActionBar < Base
    %w[
      ReportSpam
      ReportUnrelatedLocation
      InviteMembers
      ReportAddBlock
      AddContact
      SharePhoneNumber
      JoinRequest
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/ChatActionBar/#{type}"
    end
  end
end
