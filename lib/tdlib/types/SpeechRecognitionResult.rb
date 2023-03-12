module TD::Types
  # Describes result of speech recognition in a voice note.
  class SpeechRecognitionResult < Base
    %w[
      Pending
      Text
      Error
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/SpeechRecognitionResult/#{type}"
    end
  end
end
