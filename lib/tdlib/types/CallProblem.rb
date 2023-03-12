module TD::Types
  # Describes the exact type of a problem with a call.
  class CallProblem < Base
    %w[
      Echo
      Noise
      Interruptions
      DistortedSpeech
      SilentLocal
      SilentRemote
      Dropped
      DistortedVideo
      PixelatedVideo
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/CallProblem/#{type}"
    end
  end
end
