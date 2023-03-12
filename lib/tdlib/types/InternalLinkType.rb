module TD::Types
  # Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
  class InternalLinkType < Base
    %w[
      ActiveSessions
      AttachmentMenuBot
      AuthenticationCode
      Background
      BotAddToChannel
      BotStart
      BotStartInGroup
      ChangePhoneNumber
      ChatInvite
      DefaultMessageAutoDeleteTimerSettings
      EditProfileSettings
      FilterSettings
      Game
      InstantView
      Invoice
      LanguagePack
      LanguageSettings
      Message
      MessageDraft
      PassportDataRequest
      PhoneNumberConfirmation
      PremiumFeatures
      PrivacyAndSecuritySettings
      Proxy
      PublicChat
      QrCodeAuthentication
      RestorePurchases
      Settings
      StickerSet
      Theme
      ThemeSettings
      UnknownDeepLink
      UnsupportedProxy
      UserPhoneNumber
      UserToken
      VideoChat
      WebApp
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InternalLinkType/#{type}"
    end
  end
end
