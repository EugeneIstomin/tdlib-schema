module TD::Types
  # Describes the reason why a chat is reported.
  class ReportReason < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/ReportReason/#{type}"
    end
  end
end
