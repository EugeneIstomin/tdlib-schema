module TD::Types
  # Represents a part of the text which must be formatted differently.
  class TextEntityType < Base
    %w[
      Mention
      Hashtag
      Cashtag
      BotCommand
      Url
      EmailAddress
      PhoneNumber
      BankCardNumber
      Bold
      Italic
      Underline
      Strikethrough
      Spoiler
      Code
      Pre
      PreCode
      TextUrl
      MentionName
      CustomEmoji
      MediaTimestamp
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/TextEntityType/#{type}"
    end
  end
end
