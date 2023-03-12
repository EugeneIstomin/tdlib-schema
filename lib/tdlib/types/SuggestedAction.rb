module TD::Types
  # Describes an action suggested to the current user.
  class SuggestedAction < Base
    %w[
      EnableArchiveAndMuteNewChats
      CheckPassword
      CheckPhoneNumber
      ViewChecksHint
      ConvertToBroadcastGroup
      SetPassword
      UpgradePremium
      SubscribeToAnnualPremium
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/SuggestedAction/#{type}"
    end
  end
end
