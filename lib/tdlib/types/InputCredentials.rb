module TD::Types
  # Contains information about the payment method chosen by the user.
  class InputCredentials < Base
    %w[
      Saved
      New
      ApplePay
      GooglePay
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/InputCredentials/#{type}"
    end
  end
end
