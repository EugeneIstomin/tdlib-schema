module TD::Types
  # Contains the type of a Telegram Passport element.
  class PassportElementType < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/PassportElementType/#{type}"
    end
  end
end
