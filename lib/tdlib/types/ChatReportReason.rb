module TD::Types
  # Describes the reason why a chat is reported.
  class ChatReportReason < Base
    %w[
      Spam
      Violence
      Pornography
      ChildAbuse
      Copyright
      UnrelatedLocation
      Fake
      IllegalDrugs
      PersonalDetails
      Custom
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ChatReportReason/#{type}"
    end
  end
end
