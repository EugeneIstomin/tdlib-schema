module TD::Types
  # Describes a source from which the Premium features screen is opened.
  class PremiumSource < Base
    %w[
      LimitExceeded
      Feature
      Link
      Settings
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PremiumSource/#{type}"
    end
  end
end
