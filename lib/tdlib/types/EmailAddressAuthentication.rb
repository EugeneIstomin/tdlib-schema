module TD::Types
  # Contains authentication data for a email address.
  class EmailAddressAuthentication < Base
    %w[
      Code
      AppleId
      GoogleId
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/EmailAddressAuthentication/#{type}"
    end
  end
end
