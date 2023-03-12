module TD::Types
  # Contains information about a Telegram Passport element to be saved.
  class InputPassportElement < Base
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
      autoload TD::Types.camelize(type), "tdlib/types/InputPassportElement/#{type}"
    end
  end
end
