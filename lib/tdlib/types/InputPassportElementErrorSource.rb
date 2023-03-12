module TD::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  class InputPassportElementErrorSource < Base
    %w[
      Unspecified
      DataField
      FrontSide
      ReverseSide
      Selfie
      TranslationFile
      TranslationFiles
      File
      Files
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/InputPassportElementErrorSource/#{type}"
    end
  end
end
