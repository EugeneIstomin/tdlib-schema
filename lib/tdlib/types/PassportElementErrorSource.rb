module TD::Types
  # Contains the description of an error in a Telegram Passport element.
  class PassportElementErrorSource < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/PassportElementErrorSource/#{type}"
    end
  end
end
