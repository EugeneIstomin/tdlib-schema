module TD::Types
  # Contains information about a Telegram Passport element.
  class PassportElement < Base
    %w[
      PersonalDetails
      Passport
      DriverLicense
      IdentityCard
      InternalPassport
      Address
      UtilityBill
      BankStatement
      RentalAgreement
      PassportRegistration
      TemporaryRegistration
      PhoneNumber
      EmailAddress
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/PassportElement/#{type}"
    end
  end
end
