module TD::Types
  # The speech recognition failed.
  #
  # @attr error [TD::Types::Error] Received error.
  class SpeechRecognitionResult::Error < SpeechRecognitionResult
    attribute :error, TD::Types::Error
  end
end
