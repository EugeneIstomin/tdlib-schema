module TD::Types
  # Represents result of checking whether the current session can be used to transfer a chat ownership to another user.
  class CanTransferOwnershipResult < Base
    %w[
      Ok
      PasswordNeeded
      PasswordTooFresh
      SessionTooFresh
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/CanTransferOwnershipResult/#{type}"
    end
  end
end
