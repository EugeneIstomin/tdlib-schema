module TD::Types
  # Describes reset state of a email address.
  class EmailAddressResetState < Base
    %w[
      Available
      Pending
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/EmailAddressResetState/#{type}"
    end
  end
end
